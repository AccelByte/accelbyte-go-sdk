// Code generated by go-swagger; DO NOT EDIT.

package user_statistic

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// BulkUpdateUserStatItem1Reader is a Reader for the BulkUpdateUserStatItem1 structure.
type BulkUpdateUserStatItem1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkUpdateUserStatItem1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkUpdateUserStatItem1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkUpdateUserStatItem1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v2/public/namespaces/{namespace}/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkUpdateUserStatItem1OK creates a BulkUpdateUserStatItem1OK with default headers values
func NewBulkUpdateUserStatItem1OK() *BulkUpdateUserStatItem1OK {
	return &BulkUpdateUserStatItem1OK{}
}

/*BulkUpdateUserStatItem1OK handles this case with default header values.

  successful operation
*/
type BulkUpdateUserStatItem1OK struct {
	Payload []*socialclientmodels.BulkStatItemOperationResult
}

func (o *BulkUpdateUserStatItem1OK) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/statitems/value/bulk][%d] bulkUpdateUserStatItem1OK  %+v", 200, o.Payload)
}

func (o *BulkUpdateUserStatItem1OK) GetPayload() []*socialclientmodels.BulkStatItemOperationResult {
	return o.Payload
}

func (o *BulkUpdateUserStatItem1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkUpdateUserStatItem1UnprocessableEntity creates a BulkUpdateUserStatItem1UnprocessableEntity with default headers values
func NewBulkUpdateUserStatItem1UnprocessableEntity() *BulkUpdateUserStatItem1UnprocessableEntity {
	return &BulkUpdateUserStatItem1UnprocessableEntity{}
}

/*BulkUpdateUserStatItem1UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkUpdateUserStatItem1UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkUpdateUserStatItem1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v2/public/namespaces/{namespace}/statitems/value/bulk][%d] bulkUpdateUserStatItem1UnprocessableEntity  %+v", 422, o.Payload)
}

func (o *BulkUpdateUserStatItem1UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItem1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(socialclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
