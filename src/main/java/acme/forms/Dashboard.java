
package acme.forms;

import java.io.Serializable;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Dashboard implements Serializable {

	// Serialisation identifier
	private static final long	serialVersionUID	= 1L;

	// Attributes

	Integer						numberOfNotices;
	Integer						numberOfTechnologyRecords;
	Integer						numberOfToolRecords;

	Double						minimumMinMoneyActiveInquiries;
	Double						maximumMinMoneyActiveInquiries;
	Double						avgMinMoneyActiveInquiries;
	Double						stddevMinMoneyActiveInquiries;

	Double						minimumMaxMoneyActiveInquiries;
	Double						maximumMaxMoneyActiveInquiries;
	Double						avgMaxMoneyActiveInquiries;
	Double						stddevMaxMoneyActiveInquiries;

	Double						minimumMinMoneyActiveOvertures;
	Double						maximumMinMoneyActiveOvertures;
	Double						avgMinMoneyActiveOvertures;
	Double						stddevMinMoneyActiveOvertures;

	Double						minimumMaxMoneyActiveOvertures;
	Double						maximumMaxMoneyActiveOvertures;
	Double						avgMaxMoneyActiveOvertures;
	Double						stddevMaxMoneyActiveOvertures;

	List<String>				techRecordsSectors;
	List<Long>					techRecordsBySector;

	List<String>				toolRecordsSectors;
	List<Long>					toolRecordsBySector;

	List<Integer>				techRecordsLicence;
	List<Integer>				toolRecordsLicence;

}
