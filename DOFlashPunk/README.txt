DO(DisplayObject)FlashPunk
--------------------------

I am not the original author of the attached
Engine. It is made by Chevy Ray & Co! Therefore, 
I take no credit of its amazingly fine work!

---


Inside the src folder is a directory called net, 
it is there the modified version of FlashPunk resides.
The only modified classes are FP.as and Engine.as. 

---

I removed and modified the following things:
- stage (FP.as) is now a DisplayObject
- stage property function is removed, it only modifies StageAlign etc..., 
stuff that doesn't exist within the DisplayObject class).
- Added param. to the Engine constructor, you have to assign the root so FP
can know where to look for it.

---

Cheers! 
- Erik Jansson (@CaffeineViking)