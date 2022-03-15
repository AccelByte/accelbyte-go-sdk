// Code generated by go-swagger; DO NOT EDIT.

package user_action

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// PublicReportUserReader is a Reader for the PublicReportUser structure.
type PublicReportUserReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicReportUserReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 400:
		result := NewPublicReportUserBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicReportUserUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/public/namespaces/{namespace}/users/{userId}/actions/report returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicReportUserBadRequest creates a PublicReportUserBadRequest with default headers values
func NewPublicReportUserBadRequest() *PublicReportUserBadRequest {
	return &PublicReportUserBadRequest{}
}

/*PublicReportUserBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type PublicReportUserBadRequest struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicReportUserBadRequest) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/actions/report][%d] publicReportUserBadRequest  %+v", 400, o.Payload)
}

func (o *PublicReportUserBadRequest) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicReportUserBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicReportUserUnprocessableEntity creates a PublicReportUserUnprocessableEntity with default headers values
func NewPublicReportUserUnprocessableEntity() *PublicReportUserUnprocessableEntity {
	return &PublicReportUserUnprocessableEntity{}
}

/*PublicReportUserUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicReportUserUnprocessableEntity struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *PublicReportUserUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/actions/report][%d] publicReportUserUnprocessableEntity  %+v", 422, o.Payload)
}

func (o *PublicReportUserUnprocessableEntity) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicReportUserUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
