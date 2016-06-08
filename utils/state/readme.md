STATE: A Dictionary-Based State-Management Utility for MaxMSP
====================

## Background
For those with conventional programming experience, the transition to MaxMSP can be rather difficult at times.  The lack of variable scoping rules (e.g. limiting visibility to the current encapsulation/abstraction) and the difficulty in managing state make some tasks quite hard in MaxMSP, whereas they would be trivial in a typical programming language.  From a MaxMSP purist (or expert?) point-of-view, these things are overcome via clever patching, but to others, the resulting tangle of patch cords may be less than ideal.  Two abstractions are provided here to simplify managing state:
    1. state.create
    2. state.prop

State "scoping" (i.e. whether a global state or a separate state for each encapsulation or abstraction) is whatever the programmer desires.  This is not true scoping as everything still lives in the global namespace, but you can always have a reference to the current state, such that the end-product is similar.

Another key concept of maintaining state is that there is only one copy, and therefore no chance to introduce inconsistencies.  Each state dict is a 'Singleton'.  Using these 2 abstractions guarantees this.  The only exception is when you need to query to a parent state from a child state and for this, there are a variety of workarounds.
    
## Details
The primary data structure for all the state data is the dictionary.  Essentially, these abstractions wrap dictionary and guarantee that all accesses refers to a single instance (for each scope).  The dictionary implementation in MaxMSP imposes some constraints on how this can be achieved, particularly due to its heavy reliance on 'passing by value' or 'cloning'.  More specifically, any dynamic references to a dictionary (i.e. when you pass the dictionary name into a dict object via a patch cord), will create a 'clone' of the referenced dict.  This would violate the requirement that there should be only one copy of a state dictionary object.  To work around this issue, all state dictionaries must be named 'statically'.  That is, each dict object in these abstractions uses a static reference to a named dictionary.

## Usage
- Conventions
    - Both abstractions require a first argument which provides a name for their shared underlying dictionary.
        - This value should be the same for all abstraction instances when you wish them to share a state, but you can create as many different state objects as you like.
    - In ```state.prop```, the key/name of a prop can be assigned statically (via argument 2) or dynamically (via inlets), however in a conflict for a given instance, the static property will always take precedence.
    - Call ```state.create``` before calling any associated instances of ```state.prop```

- state.create
    - Creates the shared state dictionary object.
    - Inlets: *from l to r*
        1. Hot, Required, Bang: Triggers creation of the specified state dictionary.
        2. Cold, Optional, Symbol: The name of the parent state (i.e. whatever is argument 1 for the parent scope)
        3. Cold, Optional, Sympol: The name of the current patcher.  This is just to for diagnostic purposes.
        4. Cold, Optional, Integer: Either 1 or 0.  This overrides the debug setting, which by default, is inherited by the parent scope (if it exists).
    - Outlets:  **None**
        
- state.prop
    - Gets and sets properties from the associated state dictionary object.
    - arguments:
        1. name of state [REQUIRED]
        2. prop name to wrap [OPTIONAL]
            - if this argument is set, this instance ignore the property you pass in to it's leftmost inlet.  
    - Inlets: 
        1. [HOT, OPTIONAL, SYMBOL OR BANG] For getting: The key/name of the property whose value will be returned.  If this value is specified statically (via argument), then this inlet's value will be ignored.  In this case, you can just as well pass in a BANG to trigger the evaluation.
        2. [HOT, OPTIONAL, ANYTHING] For setting: The value corresponding to the key (inlet 3 or argument 2) which should be set.  Passing this value triggers the setting.
        3. [COLD, OPTIONAL, SYMBOL] For setting: The key/name of the property to get.  If this value is specified statically (via argument), then this inlet's value will be ignored.
        4. [HOT, OPTIONAL, Message] 
    - Outlets:
        1. For get operations, the value which has been gotten.  For set operations, there is no ouput.
        2. For get operations and messages, the typical dict output message format: <name> <value>.  For set operations, there is no output.
    - Messages:
        - ```get <propName>```: propName is ignored if argument 2 is specified.  output format is "propName value"
        - ```set <propName> <value>```: propName is ignored if argument 2 is specified.  No output.
        - ```getDictName```: returns the state dictionary name as "dictionary XYZ" 
    - 2 special properties which are 'gettable':
        - ```parentStateClone```: Returns a dictionary reference for the parent state's dictionary.  This can be piped in to a dict object to create an immediate clone of the data.        
        - ```initStateParentClone```: This refers to a nested dictionary that was cloned off the parent state's dictionary when the current state was created.  You can query this data using the nested syntax (e.g. ```initStateParentClone::patchName``` to get the parent scope's patchName property), but keep in mind that the data might not be up to date.  Presently, the best way to get current information on the parent scope is to use the ```parentStateClone``` property and generate a *current* cloned version.
   
## Examples:
- See the test/stateDriver.maxpat for examples and demonstrations

## Known Issues / Limitations / Todos
- **TODO**: Tested setting lists as values.
- **Known Issue**: Cannot set nested dictionaries as values.  Needs further investigation.    
