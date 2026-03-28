package options;

class AndroidSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Android Settings';
		rpcTitle = 'Android Settings Menu';

		var option:Option = new Option('Hitbox Opacity', // name
			'Set how transparent the hitbox is.', // description
			'hitboxOpacity', // variable name
			FLOAT);
		
		option.minValue = 0; 
		option.maxValue = 1;  
		option.changeValue = 0.1;
		option.decimals = 1;   
		option.scrollSpeed = 1.0;
		addOption(option);

		var option:Option = new Option('Enable Hitbox Hints',
			'These show where the hitboxes are located, used if u cant remember where they are.',
			'hitboxHint',
			BOOL);
		addOption(option);

		super();
	}
}
