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

// UpdateClientSecretReader is a Reader for the UpdateClientSecret structure.
type UpdateClientSecretReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateClientSecretReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUpdateClientSecretNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateClientSecretBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateClientSecretUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateClientSecretForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateClientSecretNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/clients/{clientId}/secret returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateClientSecretNoContent creates a UpdateClientSecretNoContent with default headers values
func NewUpdateClientSecretNoContent() *UpdateClientSecretNoContent {
	return &UpdateClientSecretNoContent{}
}

/*UpdateClientSecretNoContent handles this case with default header values.

  Operation succeeded
*/
type UpdateClientSecretNoContent struct {
}

func (o *UpdateClientSecretNoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/clients/{clientId}/secret][%d] updateClientSecretNoContent ", 204)
}

func (o *UpdateClientSecretNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateClientSecretBadRequest creates a UpdateClientSecretBadRequest with default headers values
func NewUpdateClientSecretBadRequest() *UpdateClientSecretBadRequest {
	return &UpdateClientSecretBadRequest{}
}

/*UpdateClientSecretBadRequest handles this case with default header values.

  Invalid request
*/
type UpdateClientSecretBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateClientSecretBadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/clients/{clientId}/secret][%d] updateClientSecretBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateClientSecretBadRequest) ToJSONString() string {
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

func (o *UpdateClientSecretBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateClientSecretBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateClientSecretUnauthorized creates a UpdateClientSecretUnauthorized with default headers values
func NewUpdateClientSecretUnauthorized() *UpdateClientSecretUnauthorized {
	return &UpdateClientSecretUnauthorized{}
}

/*UpdateClientSecretUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateClientSecretUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateClientSecretUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/clients/{clientId}/secret][%d] updateClientSecretUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateClientSecretUnauthorized) ToJSONString() string {
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

func (o *UpdateClientSecretUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateClientSecretUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateClientSecretForbidden creates a UpdateClientSecretForbidden with default headers values
func NewUpdateClientSecretForbidden() *UpdateClientSecretForbidden {
	return &UpdateClientSecretForbidden{}
}

/*UpdateClientSecretForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type UpdateClientSecretForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateClientSecretForbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/clients/{clientId}/secret][%d] updateClientSecretForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateClientSecretForbidden) ToJSONString() string {
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

func (o *UpdateClientSecretForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateClientSecretForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateClientSecretNotFound creates a UpdateClientSecretNotFound with default headers values
func NewUpdateClientSecretNotFound() *UpdateClientSecretNotFound {
	return &UpdateClientSecretNotFound{}
}

/*UpdateClientSecretNotFound handles this case with default header values.

  Data not found
*/
type UpdateClientSecretNotFound struct {
}

func (o *UpdateClientSecretNotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/clients/{clientId}/secret][%d] updateClientSecretNotFound ", 404)
}

func (o *UpdateClientSecretNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
