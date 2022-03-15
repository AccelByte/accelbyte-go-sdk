// Code generated by go-swagger; DO NOT EDIT.

package game_profile

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

// PublicUpdateProfileReader is a Reader for the PublicUpdateProfile structure.
type PublicUpdateProfileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateProfileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateProfileOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateProfileNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicUpdateProfileUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateProfileOK creates a PublicUpdateProfileOK with default headers values
func NewPublicUpdateProfileOK() *PublicUpdateProfileOK {
	return &PublicUpdateProfileOK{}
}

/*PublicUpdateProfileOK handles this case with default header values.

  successful operation
*/
type PublicUpdateProfileOK struct {
	Payload *socialclientmodels.GameProfileInfo
}

func (o *PublicUpdateProfileOK) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicUpdateProfileOK  %+v", 200, o.Payload)
}

func (o *PublicUpdateProfileOK) GetPayload() *socialclientmodels.GameProfileInfo {
	return o.Payload
}

func (o *PublicUpdateProfileOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(socialclientmodels.GameProfileInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdateProfileNotFound creates a PublicUpdateProfileNotFound with default headers values
func NewPublicUpdateProfileNotFound() *PublicUpdateProfileNotFound {
	return &PublicUpdateProfileNotFound{}
}

/*PublicUpdateProfileNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12041</td><td>Game profile with id [{profileId}] is not found</td></tr></table>
*/
type PublicUpdateProfileNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicUpdateProfileNotFound) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicUpdateProfileNotFound  %+v", 404, o.Payload)
}

func (o *PublicUpdateProfileNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateProfileNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdateProfileUnprocessableEntity creates a PublicUpdateProfileUnprocessableEntity with default headers values
func NewPublicUpdateProfileUnprocessableEntity() *PublicUpdateProfileUnprocessableEntity {
	return &PublicUpdateProfileUnprocessableEntity{}
}

/*PublicUpdateProfileUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicUpdateProfileUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicUpdateProfileUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] publicUpdateProfileUnprocessableEntity  %+v", 422, o.Payload)
}

func (o *PublicUpdateProfileUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicUpdateProfileUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(socialclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
