// Code generated by go-swagger; DO NOT EDIT.

package slot

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

// PublicUpdateUserNamespaceSlotReader is a Reader for the PublicUpdateUserNamespaceSlot structure.
type PublicUpdateUserNamespaceSlotReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateUserNamespaceSlotReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateUserNamespaceSlotOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateUserNamespaceSlotBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateUserNamespaceSlotNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateUserNamespaceSlotOK creates a PublicUpdateUserNamespaceSlotOK with default headers values
func NewPublicUpdateUserNamespaceSlotOK() *PublicUpdateUserNamespaceSlotOK {
	return &PublicUpdateUserNamespaceSlotOK{}
}

/*PublicUpdateUserNamespaceSlotOK handles this case with default header values.

  successful operation
*/
type PublicUpdateUserNamespaceSlotOK struct {
	Payload *socialclientmodels.SlotInfo
}

func (o *PublicUpdateUserNamespaceSlotOK) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}][%d] publicUpdateUserNamespaceSlotOK  %+v", 200, o.Payload)
}

func (o *PublicUpdateUserNamespaceSlotOK) GetPayload() *socialclientmodels.SlotInfo {
	return o.Payload
}

func (o *PublicUpdateUserNamespaceSlotOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(socialclientmodels.SlotInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdateUserNamespaceSlotBadRequest creates a PublicUpdateUserNamespaceSlotBadRequest with default headers values
func NewPublicUpdateUserNamespaceSlotBadRequest() *PublicUpdateUserNamespaceSlotBadRequest {
	return &PublicUpdateUserNamespaceSlotBadRequest{}
}

/*PublicUpdateUserNamespaceSlotBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12121</td><td>Checksum mismatch for [{filename}]</td></tr><tr><td>12122</td><td>[{filename}] exceeds the upload limit size of [{sizeLimit}] bytes</td></tr></table>
*/
type PublicUpdateUserNamespaceSlotBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicUpdateUserNamespaceSlotBadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}][%d] publicUpdateUserNamespaceSlotBadRequest  %+v", 400, o.Payload)
}

func (o *PublicUpdateUserNamespaceSlotBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateUserNamespaceSlotBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdateUserNamespaceSlotNotFound creates a PublicUpdateUserNamespaceSlotNotFound with default headers values
func NewPublicUpdateUserNamespaceSlotNotFound() *PublicUpdateUserNamespaceSlotNotFound {
	return &PublicUpdateUserNamespaceSlotNotFound{}
}

/*PublicUpdateUserNamespaceSlotNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12141</td><td>Slot [{slotId}] not found in namespace [{namespace}]</td></tr></table>
*/
type PublicUpdateUserNamespaceSlotNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicUpdateUserNamespaceSlotNotFound) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}][%d] publicUpdateUserNamespaceSlotNotFound  %+v", 404, o.Payload)
}

func (o *PublicUpdateUserNamespaceSlotNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateUserNamespaceSlotNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
