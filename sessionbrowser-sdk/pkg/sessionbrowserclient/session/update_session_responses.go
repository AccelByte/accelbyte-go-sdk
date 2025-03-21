// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
)

// UpdateSessionReader is a Reader for the UpdateSession structure.
type UpdateSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateSessionOK creates a UpdateSessionOK with default headers values
func NewUpdateSessionOK() *UpdateSessionOK {
	return &UpdateSessionOK{}
}

/*UpdateSessionOK handles this case with default header values.

  session updated
*/
type UpdateSessionOK struct {
	Payload *sessionbrowserclientmodels.ModelsSessionResponse
}

func (o *UpdateSessionOK) Error() string {
	return fmt.Sprintf("[PUT /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}][%d] updateSessionOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateSessionOK) ToJSONString() string {
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

func (o *UpdateSessionOK) GetPayload() *sessionbrowserclientmodels.ModelsSessionResponse {
	return o.Payload
}

func (o *UpdateSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ModelsSessionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateSessionBadRequest creates a UpdateSessionBadRequest with default headers values
func NewUpdateSessionBadRequest() *UpdateSessionBadRequest {
	return &UpdateSessionBadRequest{}
}

/*UpdateSessionBadRequest handles this case with default header values.

  malformed request
*/
type UpdateSessionBadRequest struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *UpdateSessionBadRequest) Error() string {
	return fmt.Sprintf("[PUT /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}][%d] updateSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateSessionBadRequest) ToJSONString() string {
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

func (o *UpdateSessionBadRequest) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *UpdateSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateSessionNotFound creates a UpdateSessionNotFound with default headers values
func NewUpdateSessionNotFound() *UpdateSessionNotFound {
	return &UpdateSessionNotFound{}
}

/*UpdateSessionNotFound handles this case with default header values.

  session not found
*/
type UpdateSessionNotFound struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *UpdateSessionNotFound) Error() string {
	return fmt.Sprintf("[PUT /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}][%d] updateSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateSessionNotFound) ToJSONString() string {
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

func (o *UpdateSessionNotFound) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *UpdateSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateSessionInternalServerError creates a UpdateSessionInternalServerError with default headers values
func NewUpdateSessionInternalServerError() *UpdateSessionInternalServerError {
	return &UpdateSessionInternalServerError{}
}

/*UpdateSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateSessionInternalServerError struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *UpdateSessionInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}][%d] updateSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateSessionInternalServerError) ToJSONString() string {
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

func (o *UpdateSessionInternalServerError) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *UpdateSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
