// Code generated by go-swagger; DO NOT EDIT.

package subscription

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// RecurringChargeSubscriptionReader is a Reader for the RecurringChargeSubscription structure.
type RecurringChargeSubscriptionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RecurringChargeSubscriptionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRecurringChargeSubscriptionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/subscriptions/{subscriptionId}/recurring returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRecurringChargeSubscriptionOK creates a RecurringChargeSubscriptionOK with default headers values
func NewRecurringChargeSubscriptionOK() *RecurringChargeSubscriptionOK {
	return &RecurringChargeSubscriptionOK{}
}

/*RecurringChargeSubscriptionOK handles this case with default header values.

  successful operation
*/
type RecurringChargeSubscriptionOK struct {
	Payload *platformclientmodels.RecurringChargeResult
}

func (o *RecurringChargeSubscriptionOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/subscriptions/{subscriptionId}/recurring][%d] recurringChargeSubscriptionOK  %+v", 200, o.Payload)
}

func (o *RecurringChargeSubscriptionOK) GetPayload() *platformclientmodels.RecurringChargeResult {
	return o.Payload
}

func (o *RecurringChargeSubscriptionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.RecurringChargeResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
