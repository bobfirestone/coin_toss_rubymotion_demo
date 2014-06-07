class RootViewController < UIViewController
  def viewDidLoad
    view.backgroundColor = UIColor.whiteColor
    @titleLabel = title_label(0,25)
    @result = result(0,100)
    @tossCoin = coin_toss_button
    view.addSubview(@titleLabel)
    view.addSubview(@result)
    view.addSubview(@tossCoin)
  end

  def result(xPosition,yPosition)
    label = UILabel.alloc.initWithFrame(CGRectMake(xPosition,yPosition,320,300))
    label.backgroundColor = UIColor.clearColor;
    label.text = ''
    label.textColor = UIColor.blackColor;
    label.font = UIFont.fontWithName("HelveticaNeue-Medium",size:300)
    label.textAlignment = NSTextAlignmentCenter
    label
  end

  def title_label(xPosition,yPosition)
    label = UILabel.alloc.initWithFrame(CGRectMake(xPosition,yPosition,320,75))
    label.backgroundColor = UIColor.clearColor;
    label.text = "CoinTossed"
    label.textColor = UIColor.blackColor;
    label.font = UIFont.fontWithName("HelveticaNeue-Medium",size:52)
    label.textAlignment = NSTextAlignmentCenter
    label
  end

  def coin_toss_button
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.frame = [[15, 500], [295, 50]]
    button.setTitle("click to toss", forState:UIControlStateNormal)
    button.titleLabel.font = UIFont.fontWithName("HelveticaNeue-Light", size:44)
    button.addTarget(self, action:'toss', forControlEvents:UIControlEventTouchUpInside)
    button
  end

  def toss
    p 'Toss was pressed'
    @result.text = heads_or_tails
  end

  def heads_or_tails
    case rand(4)
    when 0
      'H'
    when 1
      'h'
    when 2
      'T'
    else
      't'
    end
  end
end
