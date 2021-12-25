//
//  ResultViewController.swift
//  心理測驗APP
//
//  Created by 王昱淇 on 2021/12/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var introduction1Label: UILabel!
    @IBOutlet weak var introduction2Label: UILabel!
    @IBOutlet weak var introduction3Label: UILabel!
    @IBOutlet weak var introduction4Label: UILabel!
    @IBOutlet weak var advantageLabel: UILabel!
    @IBOutlet weak var shortcomingLabel: UILabel!
    @IBOutlet weak var celebrityLabel: UILabel!
    let answerString: String!
    var personality = Personality(name: "指揮官",
                                  personalityName: "ENTJ",
                                  introduction1: "1. 只佔人口的 3%",
                                  introduction2: "2. 天生的領導者，散發魅力與自信",
                                  introduction3: "3. 幸福來源於成功時的喜悅",
                                  introduction4: "4. 善於發現他人的才能",
                                  advantage:  "優點：有效率、充滿活力、自信、意志堅定、充滿魅力",
                                  shortcoming: "缺點：固執、不能容人、傲慢、沒有耐心、冷酷無情",
                                  celebrity: "同性格名人：莎莉．賽隆、比爾．蓋茲、柴契爾夫人")
    
    init?(coder: NSCoder, answerString: String){
        self.answerString = answerString
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        
       
    }
    
    func updateUI() {
    
        if answerString == "ENTJ" {
            personality = Personality(name: "指揮官", personalityName: "ENTJ",
                                      introduction1: "1. 只佔人口的 3%",
                                      introduction2: "2. 天生的領導者，散發魅力與自信",
                                      introduction3: "3. 幸福來源於成功時的喜悅",
                                      introduction4: "4. 善於發現他人的才能",
                                      advantage:  "優點：有效率、充滿活力、自信、意志堅定、充滿魅力",
                                      shortcoming: "缺點：固執、不能容人、傲慢、沒有耐心、冷酷無情",
                                      celebrity: "同性格名人：莎莉．賽隆、比爾．蓋茲、柴契爾夫人")
        } else if answerString == "ENTP" {
            personality = Personality(name: "辯論家", personalityName: "ENTP",
                                      introduction1: "1. 只佔人口的 3%",
                                      introduction2: "2. 天生愛唱反調，抬槓不是要打破傳統，而是因為有趣",
                                      introduction3: "3. 知識豐富、有敏銳的幽默感",
                                      introduction4: "4. 很難與人交往",
                                      advantage:  "優點：知識豐富、思想敏銳、善於腦力激盪、精力旺盛、充滿魅力",
                                      shortcoming: "缺點：愛唱反調、不能容人、厭惡重複的工作、注意力不集中",
                                      celebrity: "同性格名人：歐巴馬、富蘭克林、達文西")
        } else if answerString == "INTP" {
            personality = Personality(name: "邏學家", personalityName: "INTP",
                                      introduction1: "1. 看上去像是在沉思或者神游，因為他們經常在自己的腦海裡進行激烈的辯論。與熟人或愛好相近的人相處時，會變得非常放鬆而友好。",
                                      introduction2: "2.  從不抱怨也不能理解別人的抱怨",
                                      introduction3: "3. 對失敗過於恐懼限制了他們的成功",
                                      introduction4: "",
                                      advantage: "優點：善於分析總結、有大局觀、創造性強、思想開放、客觀、誠實",
                                      shortcoming: "缺點：難以敞開心扉、居高臨下、總是懷疑自己、情感上不敏感、厭惡規則束縛",
                                      celebrity: "同性格名人：愛因斯坦、林肯")
        } else if answerString == "INTJ" {
            personality = Personality(name: "建築師", personalityName: "INTJ",
                                      introduction1: "1. 喜歡獨處",
                                      introduction2: "2. 厭惡規則、限制與傳統",
                                      introduction3: "3. 厭惡愚蠢、愚昧的人",
                                      introduction4: "",
                                      advantage: "優點：理性、堅定、獨立、好奇心重、易於成功",
                                      shortcoming: "缺點：傲慢、忽視他人情感、憤世嫉俗、競爭性強、缺乏浪漫",
                                      celebrity: "同性格名人：馬克．祖克柏、馬克思")
        } else if answerString == "INFJ" {
            personality = Personality(name: "提倡者", personalityName: "INFJ",
                                      introduction1: "1. 只佔人口的 1%，非常稀有",
                                      introduction2: "2. 腳踏實地完成目標",
                                      introduction3: "3. 幫助別人就是他們的人生意義",
                                      introduction4: "",
                                      advantage: "優點：富有創意、思想敏銳、原則性強、熱情、利他主義者",
                                      shortcoming: "缺點：對批評敏感、很難敞開心扉、過於完美主義、忽略自己的感受",
                                      celebrity: "同性格名人：凱特．布蘭琪、甘地")
        } else if answerString == "INFP" {
            personality = Personality(name: "調停者", personalityName: "INFP",
                                      introduction1: "1. 只佔人口的 4%",
                                      introduction2: "2. 外在冷靜，內在熱情",
                                      introduction3: "3. 樂觀主義者",
                                      introduction4: "4. 原則性強",
                                      advantage: "優點：關愛他人、慷慨大方、思想開明、有創意、熱情似火",
                                      shortcoming: " 缺點：太理想主義、常自我批評、不切實際、意氣用事",
                                      celebrity: "同性格名人：約翰．藍儂、J．K．羅琳、莎士比亞")
        } else if answerString == "ENFJ" {
            personality = Personality(name: "主人公", personalityName: "ENFJ",
                                      introduction1: "1. 佔人口的 2%",
                                      introduction2: "2. 天生的領導者，充滿激情、魅力四射",
                                      introduction3: "3. 常常是我們的政客、教練和老師",
                                      introduction4: "4. 幫助、啟發他人取得成就，並造福整個世界",
                                      advantage: "優點：體諒他人、可被依賴、利他主義、天生的領導者、為人善良",
                                      shortcoming: "缺點：太無私易吃虧、過於敏感、搖擺不定、不安全感重",
                                      celebrity: "同性格名人：歐普拉、馬丁．路德")
        } else if answerString == "ISTJ" {
            personality = Personality(name: "物流師", personalityName: "ISTJ",
                                      introduction1: "1. 人類中數量最多的，大約佔人口總數的 13%",
                                      introduction2: "2. 深受家庭以及擁護傳統、規則、標準的組織青睞。比如律所、監管部門和軍隊",
                                      introduction3: "3. 正直、務實，恪盡職守",
                                      introduction4: "4. 願意為自己的行為負責",
                                      advantage: "優點：誠實正直、有責任感、冷靜自律、服從紀律",
                                      shortcoming: "缺點：固執、情感不敏感、過於教條、不尊重多樣化",
                                      celebrity: "同性格名人：娜塔莉．波曼、喬治．華盛頓")
        } else if answerString == "ENFP" {
            personality = Personality(name: "競選者", personalityName: "ENFP",
                                      introduction1: "1. 佔人口的 7%",
                                      introduction2: "2. 真正富有自由精神的人",
                                      introduction3: "3. 他們常常是聚會上的焦點",
                                      introduction4: "4. 富有魅力，獨立、精力充沛且有同情心",
                                      advantage: "優點：充滿好奇、觀察力強、充滿激情、善於溝通、非常受歡迎",
                                      shortcoming: "缺點：實作能力不強、難以集中注意力、思慮過度、非常情緒化",
                                      celebrity: "同性格名人：馬克．吐溫、珊卓．布拉克、華特．迪士尼")
        } else if answerString == "ISFJ" {
            personality = Personality(name: "守衛者", personalityName: "ISFJ",
                                      introduction1: "1. 所有人格類型中佔人口總數比例前幾名，接近 13%",
                                      introduction2: "2. 雖然非常照顧他人的感受，一旦碰到了需要保護其家人或朋友的時候，會變得非常強悍",
                                      introduction3: "3. 雖然安靜內向，卻有很好的社交技巧和社會關系",
                                      introduction4: "",
                                      advantage: "優點：樂於助人、可靠有耐心、善於觀察、努力又忠誠",
                                      shortcoming: "缺點：有時過於害羞、情感敏感，壓抑自己的情感、害怕改變",
                                      celebrity: "同性格名人：肯伊．威斯特、凱特王妃、德蕾莎修女")
        } else if answerString == "ESTJ" {
            personality = Personality(name: "總經理", personalityName: "ESTJ",
                                      introduction1: "1. 佔人口 11% 以上",
                                      introduction2: "2. 他們是傳統和秩序的代表、民主社會的領導者",
                                      introduction3: "3. 常常承擔起社區組織者的角色，帶領大家努力前行",
                                      introduction4: "4. 堅信法律和規則",
                                      advantage: "優點：勇於奉獻、意志堅定、誠實直率、享受秩序",
                                      shortcoming: "缺點：固執、難以變通、不喜歡非傳統、喜歡評價他人、過於在意社會地位",
                                      celebrity: "同性格名人：艾瑪．華森、希拉蕊．柯林頓")
        } else if answerString == "ESFJ" {
            personality = Personality(name: "執政官", personalityName: "ESFJ",
                                      introduction1: "1. 佔人口 12%",
                                      introduction2: "2. 非常受人歡迎，在聚光燈下帶領大家走向勝利和榮譽",
                                      introduction3: "3. 時刻瞭解朋友們的動向",
                                      introduction4: "4. 支持法律與規則，拒絕從哲學和神秘主義中總結道德標準",
                                      advantage: "優點：責任感強、對朋友忠誠、暖心又感性、善於交朋友",
                                      shortcoming: "缺點：不善於臨場發揮、對批評很脆弱、太過黏人、在意社會地位",
                                      celebrity: "同性格名人：泰勒絲、比爾．柯林頓")
        } else if answerString == "ISTP" {
            personality = Personality(name: "鑒賞家", personalityName: "ISTP",
                                      introduction1: "1. 佔人口 5%",
                                      introduction2: "2. 享受人生，去不同的地方、見不同的朋友、期待挑戰",
                                      introduction3: "3. 天生的製造者，從創造中獲得樂趣",
                                      introduction4: "4. 通常是機械師和工程師，樂於動手",
                                      advantage: "優點：樂觀有活力、富有創造性、隨性又理想、臨危不亂",
                                      shortcoming: "缺點：注重個人領域、很容易感到無聊、不喜歡承諾、非常喜歡冒險",
                                      celebrity: "同性格名人：賈伯斯、達賴喇嘛、艾希頓．庫奇")
        } else if answerString == "ISFP" {
            personality = Personality(name: "探險家", personalityName: "ISFP",
                                      introduction1: "1. 喜歡找各種方式來釋放自己的激情。他們比別的人格類型更容易參與有風險的行為，比如賭博和極限運動。幸運的是，他們與周圍環境的協調使他們比別人更擅長這些",
                                      introduction2: "2. 喜歡與人交往",
                                      introduction3: "3. 有種難以抗拒的魅力",
                                      introduction4: "",
                                      advantage: "優點：有魅力、想象力豐富、充滿好奇、藝術氣質濃厚",
                                      shortcoming: "缺點：過於獨立、行事難以預測、非常容易有壓力、過於有競爭性",
                                      celebrity: "同性格名人：蕾哈娜、貝克漢、麥克．傑森")
        } else if answerString == "ESFP" {
            personality = Personality(name: "表演者", personalityName: "ESFP",
                                      introduction1: "1. 總是不由自主的開始又唱又跳。表演者人格類型的人會沉醉於當前的興奮狀態，而且希望人人如此",
                                      introduction2: "2. 說起激勵他人、給他人打氣助威，會毫不吝惜自己的時間和精力",
                                      introduction3: "3. 令人難以招架，任何其他人格類型在這方面都不能與之相提並論",
                                      introduction4: "",
                                      advantage: "優點：大膽、有原創性、表演者性格、實踐能力強、善於觀察",
                                      shortcoming: "缺點：非常容易感到無聊、感情敏感、無法制定長期計劃、難以集中注意力",
                                      celebrity: "同性格名人：李奧納多、麥莉．希拉")
        } else if answerString == "ESTP" {
            personality = Personality(name: "企業家", personalityName: "ESTP",
                                      introduction1: "1. 企業家人格類型是最容易冒險的人格類型。他們活在當下、說做就做，是風暴的中心",
                                      introduction2: "2. 這使他們很難適應學校和其他秩序井然的組織",
                                      introduction3: "3. 他們也許是最有感知力和洞察力的類型，善於捕捉微小的變化",
                                      introduction4: "",
                                      advantage: "優點：大膽、理性、動手能力強、洞察力強、社交能力好",
                                      shortcoming: "缺點：感情不敏感、不耐心、喜歡冒險、沒有大局觀、叛逆",
                                      celebrity: "同性格名人：安潔莉娜・裘莉、唐納．川普")
        }
        title = personality.personalityName
        nameLabel.text = personality.name
        introduction1Label.text = personality.introduction1
        introduction2Label.text = personality.introduction2
        introduction3Label.text = personality.introduction3
        introduction4Label.text = personality.introduction4
        advantageLabel.text = personality.advantage
        shortcomingLabel.text = personality.shortcoming
        celebrityLabel.text = personality.celebrity
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
