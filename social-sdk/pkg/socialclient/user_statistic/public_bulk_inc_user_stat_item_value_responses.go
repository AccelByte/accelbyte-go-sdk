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

// PublicBulkIncUserStatItemValueReader is a Reader for the PublicBulkIncUserStatItemValue structure.
type PublicBulkIncUserStatItemValueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicBulkIncUserStatItemValueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicBulkIncUserStatItemValueOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicBulkIncUserStatItemValueUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /social/v1/public/namespaces/{namespace}/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicBulkIncUserStatItemValueOK creates a PublicBulkIncUserStatItemValueOK with default headers values
func NewPublicBulkIncUserStatItemValueOK() *PublicBulkIncUserStatItemValueOK {
	return &PublicBulkIncUserStatItemValueOK{}
}

/*PublicBulkIncUserStatItemValueOK handles this case with default header values.

  successful operation
*/
type PublicBulkIncUserStatItemValueOK struct {
	Payload []*socialclientmodels.BulkStatItemOperationResult
}

func (o *PublicBulkIncUserStatItemValueOK) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/statitems/value/bulk][%d] publicBulkIncUserStatItemValueOK  %+v", 200, o.Payload)
}

func (o *PublicBulkIncUserStatItemValueOK) GetPayload() []*socialclientmodels.BulkStatItemOperationResult {
	return o.Payload
}

func (o *PublicBulkIncUserStatItemValueOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicBulkIncUserStatItemValueUnprocessableEntity creates a PublicBulkIncUserStatItemValueUnprocessableEntity with default headers values
func NewPublicBulkIncUserStatItemValueUnprocessableEntity() *PublicBulkIncUserStatItemValueUnprocessableEntity {
	return &PublicBulkIncUserStatItemValueUnprocessableEntity{}
}

/*PublicBulkIncUserStatItemValueUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicBulkIncUserStatItemValueUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicBulkIncUserStatItemValueUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/statitems/value/bulk][%d] publicBulkIncUserStatItemValueUnprocessableEntity  %+v", 422, o.Payload)
}

func (o *PublicBulkIncUserStatItemValueUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicBulkIncUserStatItemValueUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(socialclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
