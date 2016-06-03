STATE: A Dictionary-Based State-Management Utility for MaxMSP
====================

## Background
For those with conventional programming experience, the transition to MaxMSP can be rather difficult at times.  For example, the lack of proper variable scoping and the difficulty in managing state are fairly cumbersome in MaxMSP.  From a MaxMSP purist point-of-view, these things are overcome via clever patching, but ti others, the resulting tangle of patch cords may be less than ideal.  Three abstractions are provided here to simplify managing state:
    1. state.create
    2. state.get
    3. state.set

State "scoping" (i.e. whether a global state or a separate state for each encapsulation or abstraction) is whatever the programmer desires.  This is not true scoping as everything still lives in the global namespace, but you can always have a reference to the current state, such that the end-product is similar.

Another key concept of maintaining state is that there is only one copy, and therefore no chance to introduce inconsistencies.  Using these 3 utilities will ensure that this requirement is met.  The only exception is when you need to query to a parent state- and for this, there are a variety of workarounds.
    
## Details
The primary data structure for all the state data is the dictionary.  Essentially, these three abstractions wrap access to a state dictionary and guarantee that all accesses refers to a single instance of data.  The dictionary implementation in MaxMSP imposes some constraints on how this can be achieved, particularly due to its heavy reliance on 'passing by value' or 'cloning'.  More specifically, any dynamic references to a dictionary (i.e. when you pass the dictionary name into a dict object via a patch cord), will create a 'clone' of the referenced dict.  This would violate the requirement that there should be only one copy of a state dictionary object, and therefore all state dictionaries must be named 'statically'.  That is, each dict object should have a 'static' reference to a shared dictionary as it's first argument.

## Usage
- Conventions
    - All 3 abstractions require a first argument which provides a name for their shared underlying dictionary.
        - This value should be the same for all 3 abstractions when you wish them to share a state, but you can create as many different state objects as you like.
    - ```state.get``` and ```state.set``` can have their key names set dynamically (dynamically via an inlet or statically via their second argument (which takes precedence))
    - Call ```state.create``` before calling any associated instances of ```state.get``` or ```state.set```

- state.create
    - Creates the shared state dictionary object.
    - Inlets: *from l to r*
        1. Hot, Required, Bang: Triggers creation of the specified state dictionary.
        2. Cold, Optional, Symbol: The name of the parent state (i.e. whatever is argument 1 for the parent scope)
        3. Cold, Optional, Sympol: The name of the current patcher.  This is just to for diagnostic purposes.
        4. Cold, Optional, Integer: Either 1 or 0.  This overrides the debug setting, which by default, is inherited by the parent scope (if it exists).
    - Outlets:  **None**
        
- state.get
    - Gets properties from the associated state dictionary object.
        - 2 special properties to take note of:
        - ```parentStateClone```: Returns a dictionary reference for the parent state's dictionary.  This can be piped in to a dict object to create an immediate clone of the data.        
        - ```initStateParentClone```: This refers to a nested dictionary that was cloned off the parent state's dictionary when the current state was created.  You can query this data using the nested syntax (e.g. ```initStateParentClone::patchName``` to get the parent scope's patchName property), but keep in mind that the data might not be up to date.  Presently, the best way to get current information on the parent scope is to use the ```parentStateClone``` property and generate a *current* cloned version.   
    - Inlets: *from l to r*
        1. Hot, Optional, Symbol: The key/name of the property whose value will be returned.  This value can also be specified statically as the second argument.  In this case, only a bang need be set in this inlet to trigger the evaluation.
    - Outlets:
        1. The corresponding value, which could be of any type.

- state.set
    - Sets the corresponding key/values into the associated state dictionary object.
    - Inlets: *from l to r*
        1. Hot, Required, Anything: The value corresponding to the key which should be set.
        2. Hot, Optional, Symbol: The key (i.e. property) to set.  Alternately, this value can be set statically via the object's second argument (this method takes precedence).
    - Outlets: **None**
    
## Examples:
- See the test/stateDriver.maxpat for examples and demonstrations 
    
