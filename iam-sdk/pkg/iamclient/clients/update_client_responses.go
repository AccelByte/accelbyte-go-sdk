// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// UpdateClientReader is a Reader for the UpdateClient structure.
type UpdateClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateClientOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateClientBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateClientForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateClientNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/clients/{clientId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateClientOK creates a UpdateClientOK with default headers values
func NewUpdateClientOK() *UpdateClientOK {
	return &UpdateClientOK{}
}

/*UpdateClientOK handles this case with default header values.

  OK
*/
type UpdateClientOK struct {
	Payload *iamclientmodels.ClientmodelClientResponse
}

func (o *UpdateClientOK) Error() string {
	return fmt.Sprintf("[PUT /iam/clients/{clientId}][%d] updateClientOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateClientOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateClientOK) GetPayload() *iamclientmodels.ClientmodelClientResponse {
	return o.Payload
}

func (o *UpdateClientOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ClientmodelClientResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateClientBadRequest creates a UpdateClientBadRequest with default headers values
func NewUpdateClientBadRequest() *UpdateClientBadRequest {
	return &UpdateClientBadRequest{}
}

/*UpdateClientBadRequest handles this case with default header values.

  Invalid request
*/
type UpdateClientBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateClientBadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/clients/{clientId}][%d] updateClientBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateClientBadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateClientBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateClientBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateClientUnauthorized creates a UpdateClientUnauthorized with default headers values
func NewUpdateClientUnauthorized() *UpdateClientUnauthorized {
	return &UpdateClientUnauthorized{}
}

/*UpdateClientUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateClientUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateClientUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/clients/{clientId}][%d] updateClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateClientUnauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateClientUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateClientForbidden creates a UpdateClientForbidden with default headers values
func NewUpdateClientForbidden() *UpdateClientForbidden {
	return &UpdateClientForbidden{}
}

/*UpdateClientForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type UpdateClientForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateClientForbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/clients/{clientId}][%d] updateClientForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateClientForbidden) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateClientForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateClientForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateClientNotFound creates a UpdateClientNotFound with default headers values
func NewUpdateClientNotFound() *UpdateClientNotFound {
	return &UpdateClientNotFound{}
}

/*UpdateClientNotFound handles this case with default header values.

  Data not found
*/
type UpdateClientNotFound struct {
}

func (o *UpdateClientNotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/clients/{clientId}][%d] updateClientNotFound ", 404)
}

func (o *UpdateClientNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
