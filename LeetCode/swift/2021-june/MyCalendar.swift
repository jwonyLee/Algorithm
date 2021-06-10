class MyCalendar {

    var events = [(start: Int, end: Int)]()

    init() {

    }

    func book(_ start: Int, _ end: Int) -> Bool {
        for event in events {
            if event.start < end && start < event.end {
                return false
            }
        }
        events.append((start: start, end: end))
        return true
    }
}