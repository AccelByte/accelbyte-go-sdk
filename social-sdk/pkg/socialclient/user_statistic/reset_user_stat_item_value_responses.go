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

// ResetUserStatItemValueReader is a Reader for the ResetUserStatItemValue structure.
type ResetUserStatItemValueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ResetUserStatItemValueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewResetUserStatItemValueOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewResetUserStatItemValueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewResetUserStatItemValueNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset returns an error %d: %s", response.Code(), string(data))
	}
}

// NewResetUserStatItemValueOK creates a ResetUserStatItemValueOK with default headers values
func NewResetUserStatItemValueOK() *ResetUserStatItemValueOK {
	return &ResetUserStatItemValueOK{}
}

/*ResetUserStatItemValueOK handles this case with default header values.

  successful operation
*/
type ResetUserStatItemValueOK struct {
	Payload *socialclientmodels.StatItemIncResult
}

func (o *ResetUserStatItemValueOK) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset][%d] resetUserStatItemValueOK  %+v", 200, o.Payload)
}

func (o *ResetUserStatItemValueOK) GetPayload() *socialclientmodels.StatItemIncResult {
	return o.Payload
}

func (o *ResetUserStatItemValueOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(socialclientmodels.StatItemIncResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewResetUserStatItemValueBadRequest creates a ResetUserStatItemValueBadRequest with default headers values
func NewResetUserStatItemValueBadRequest() *ResetUserStatItemValueBadRequest {
	return &ResetUserStatItemValueBadRequest{}
}

/*ResetUserStatItemValueBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>12221</td><td>Invalid stat operator, expect [{expected}] but actual [{actual}]</td></tr></table>
*/
type ResetUserStatItemValueBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ResetUserStatItemValueBadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset][%d] resetUserStatItemValueBadRequest  %+v", 400, o.Payload)
}

func (o *ResetUserStatItemValueBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ResetUserStatItemValueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewResetUserStatItemValueNotFound creates a ResetUserStatItemValueNotFound with default headers values
func NewResetUserStatItemValueNotFound() *ResetUserStatItemValueNotFound {
	return &ResetUserStatItemValueNotFound{}
}

/*ResetUserStatItemValueNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>12241</td><td>Stat [{statCode}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type ResetUserStatItemValueNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ResetUserStatItemValueNotFound) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset][%d] resetUserStatItemValueNotFound  %+v", 404, o.Payload)
}

func (o *ResetUserStatItemValueNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ResetUserStatItemValueNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
