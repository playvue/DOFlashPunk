DO(DisplayObject)FlashPunk
===========

A modified FlashPunk framework allowing a DisplayObject (like root) to be used in place of the Flash stage object.

FlashPunk was created by ChevyRay. Playvue Games LLC, nor Erik Jansson (CaffeineViking) claim any ownership of any kind to this awesome framework.

<p>FlashPunk and HaxePunk both use the stage to add event listeners and to do other DisplayObject related stuff. But, many API’s and websites use underlying mechanisms that require control of the stage (or other things).</p>
<p>That puts FlashPunk and HaxePunk at a huge disadvantage, making games/programs built in them unusable (or hard to use at the very least) in a lot of very high profile websites (Playvue, Newgrounds, Kongregate, etc.) and their corresponding API’s.</p>
<p>Therefore, it might be smart to have a version of these awesome engines to run via the root (or other DisplayObjects) instead. Lucky for us, FlashPunk and HaxePunk are very nicely coded engines that are easily modifiable without completely breaking the entire engine. Even so, it was surprisingly easy:</p>
<p>First, lets modify FP.as (FlashPunk) or HXP.hx (HaxePunk). The gist here is to change the static stage variable type from Stage to DisplayObject. So basically:</p>
<pre>public static var stage:Stage; -----&gt; public static var stage:DisplayObject;</pre>
<p>Now over to Engine.as (FlashPunk) or Engine.hx (HaxePunk). Here we remove anything that requires Stage specific (not DisplayObject, remember, Stage inherits DisplayObject) methods (stuff like align and scale). Here are the things I changed:</p>
<ol>
<li>Remove the onStage addEventListener and removeEventListener and also the method called onStage, but copying the remaining code to the end of the Engines constructor.</li>
<li>remove the <code>setStageProperties</code> method and any calls it is making in the Engine (this is the really evil part of the code that depends on the Stage object methods).</li>
<li>change <code>FP.stage = stage</code> to <code>FP.stage = tdisplayObject</code>.</li>
<li>Now, on the constructor of Engines, we add another parameter. You guessed it (or not): <code>tdisplayObject:DisplayObject</code>. So, the constructor params of Engine now looks like this:
<pre style="margin-top: 20px;">Engine(tdisplayObject:DisplayObject, width:uint, height:uint, frameRate:Number = 60, fixed:Boolean = false)</pre>
</li>
</ol>
<p>Done! That was surprisingly easy, huh?</p>
<p>Cheers!</p>
<p><a href="http://twitter.com/CaffeineViking" target="_blank">@CaffeineViking</a></p>
