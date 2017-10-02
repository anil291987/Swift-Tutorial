//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport



public final class ScaledFont {
    
    private struct FontDescription: Decodable  {
        let fontSize: CGFloat
        let fontName: String
    }
    private typealias StyleDictionary = [UIFontTextStyle.RawValue: FontDescription]
    private var styleDictionary : StyleDictionary?
    public init(fontName: String) {
        if let url = Bundle.main.url(forResource: fontName, withExtension: "plist"),let data = try? Data(contentsOf: url){
            let decoder = PropertyListDecoder()
            styleDictionary = try? decoder.decode(StyleDictionary.self, from: data)
        }
    }
    public func font(forTextStyle textStyle: UIFontTextStyle)-> UIFont {
        guard let fontDescription = styleDictionary?[textStyle.rawValue], let font = UIFont(name:fontDescription.fontName, size:fontDescription.fontSize) else {
            return UIFont.preferredFont(forTextStyle: textStyle)
        }

        let fontMetrics = UIFontMetrics(forTextStyle: textStyle)

        return fontMetrics.scaledFont(for: font)
    }
    
}
class  ViewController: UIViewController {
    private let fontName = "Noteworthy"
    private let defaultSpacing: CGFloat = 8.0
    private lazy var scaledFont: ScaledFont = {
         return ScaledFont(fontName: fontName)
    }()
    private lazy var title1Label: UILabel = {
        return label(forTextStyle: .title1, text: "Title 1")
    }()
    
    private lazy var title2Label: UILabel = {
        return label(forTextStyle: .title2, text: "Title 2")
    }()
    
    private lazy var title3Label: UILabel = {
        return label(forTextStyle: .title3, text: "Title 3")
    }()
    
    private lazy var headlineLabel: UILabel = {
        return label(forTextStyle: .headline, text: "Headline")
    }()
    
    private lazy var subheadlineLabel: UILabel = {
        return label(forTextStyle: .subheadline, text: "Subheadline")
    }()
    
    private lazy var bodyLabel: UILabel = {
        return label(forTextStyle: .body, text: "Body")
    }()
    
    private lazy var calloutLabel: UILabel = {
        return label(forTextStyle: .callout, text: "Callout")
    }()
    
    private lazy var footnoteLabel: UILabel = {
        return label(forTextStyle: .footnote, text: "Footnote")
    }()
    
    private lazy var caption1Label: UILabel = {
        return label(forTextStyle: .caption1, text: "Caption 1")
    }()
    
    private lazy var caption2Label: UILabel = {
        return label(forTextStyle: .caption2, text: "Caption 2")
    }()
    
    private func label(forTextStyle textStyle: UIFontTextStyle, text: String) -> UILabel {
        let label = UILabel()
        label.font = scaledFont.font(forTextStyle: textStyle)
        label.adjustsFontForContentSizeCategory = true
        label.text = text
        label.numberOfLines = 0
        return label
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    private func setupUI() {

        let stackView = UIStackView(arrangedSubviews: [title1Label,title2Label,title3Label,headlineLabel,subheadlineLabel,bodyLabel,calloutLabel,footnoteLabel,caption1Label,caption2Label])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = defaultSpacing
    stackView.setCustomSpacing(UIStackView.spacingUseSystem, after: calloutLabel)

        stackView.setCustomSpacing(UIStackView.spacingUseDefault, after: footnoteLabel)

        
        stackView.axis = .vertical
        
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .red
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stackView)
        view.addSubview(scrollView)
        
        let margin = view.readableContentGuide
    NSLayoutConstraint.activate([scrollView.topAnchor.constraint(equalTo: margin.topAnchor),scrollView.bottomAnchor.constraint(equalTo: margin.bottomAnchor),scrollView.leadingAnchor.constraint(equalTo: margin.leadingAnchor),scrollView.trailingAnchor.constraint(equalTo: margin.trailingAnchor),
                                scrollView.topAnchor.constraint(equalTo: stackView.topAnchor),
                                scrollView.bottomAnchor.constraint(equalTo: stackView.bottomAnchor),
                                scrollView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
                                scrollView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor)])

    }
}
let controller = ViewController()
PlaygroundPage.current.liveView = controller

