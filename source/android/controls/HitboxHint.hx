package android.controls;

import flixel.group.FlxSpriteGroup;
import flixel.FlxSprite;
import flixel.FlxCamera;

#if mobile
class HitboxHint extends FlxSpriteGroup 
{
    public var hint:FlxSprite;

    public function new(camOther:FlxCamera) 
    {
        super();

        var hintGraphic = Paths.image(
            (ClientPrefs.data.hitboxStyle == 'Gradient') 
            ? "mobile/hitbox/hitbox_hint_gradient" 
            : "mobile/hitbox/hitbox_hint",
            "shared"
        );

        hint = new FlxSprite();

        if (hintGraphic != null)
            hint = new FlxSprite().loadGraphic(hintGraphic);
        else
        {
            hint = new FlxSprite().makeGraphic(1, 1, 0x00FFFFFF);
            trace("ERROR: hitbox_hint.png not found!");
        }

        hint.scrollFactor.set(0, 0);
        hint.alpha = ClientPrefs.data.hitboxOpacity;
        hint.visible = true;
        hint.cameras = [camOther];

        add(hint);
    }
}
#end
