// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// GetSessionServerSecretReader is a Reader for the GetSessionServerSecret structure.
type GetSessionServerSecretReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetSessionServerSecretReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetSessionServerSecretOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetSessionServerSecretBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetSessionServerSecretUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetSessionServerSecretNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetSessionServerSecretInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/secret returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetSessionServerSecretOK creates a GetSessionServerSecretOK with default headers values
func NewGetSessionServerSecretOK() *GetSessionServerSecretOK {
	return &GetSessionServerSecretOK{}
}

/*GetSessionServerSecretOK handles this case with default header values.

  OK
*/
type GetSessionServerSecretOK struct {
	Payload *sessionclientmodels.ApimodelsServerSecret
}

func (o *GetSessionServerSecretOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/secret][%d] getSessionServerSecretOK  %+v", 200, o.ToJSONString())
}

func (o *GetSessionServerSecretOK) ToJSONString() string {
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

func (o *GetSessionServerSecretOK) GetPayload() *sessionclientmodels.ApimodelsServerSecret {
	return o.Payload
}

func (o *GetSessionServerSecretOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsServerSecret)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSessionServerSecretBadRequest creates a GetSessionServerSecretBadRequest with default headers values
func NewGetSessionServerSecretBadRequest() *GetSessionServerSecretBadRequest {
	return &GetSessionServerSecretBadRequest{}
}

/*GetSessionServerSecretBadRequest handles this case with default header values.

  Bad Request
*/
type GetSessionServerSecretBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GetSessionServerSecretBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/secret][%d] getSessionServerSecretBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetSessionServerSecretBadRequest) ToJSONString() string {
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

func (o *GetSessionServerSecretBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GetSessionServerSecretBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSessionServerSecretUnauthorized creates a GetSessionServerSecretUnauthorized with default headers values
func NewGetSessionServerSecretUnauthorized() *GetSessionServerSecretUnauthorized {
	return &GetSessionServerSecretUnauthorized{}
}

/*GetSessionServerSecretUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetSessionServerSecretUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GetSessionServerSecretUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/secret][%d] getSessionServerSecretUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetSessionServerSecretUnauthorized) ToJSONString() string {
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

func (o *GetSessionServerSecretUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GetSessionServerSecretUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSessionServerSecretNotFound creates a GetSessionServerSecretNotFound with default headers values
func NewGetSessionServerSecretNotFound() *GetSessionServerSecretNotFound {
	return &GetSessionServerSecretNotFound{}
}

/*GetSessionServerSecretNotFound handles this case with default header values.

  Not Found
*/
type GetSessionServerSecretNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GetSessionServerSecretNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/secret][%d] getSessionServerSecretNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetSessionServerSecretNotFound) ToJSONString() string {
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

func (o *GetSessionServerSecretNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GetSessionServerSecretNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSessionServerSecretInternalServerError creates a GetSessionServerSecretInternalServerError with default headers values
func NewGetSessionServerSecretInternalServerError() *GetSessionServerSecretInternalServerError {
	return &GetSessionServerSecretInternalServerError{}
}

/*GetSessionServerSecretInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetSessionServerSecretInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GetSessionServerSecretInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/secret][%d] getSessionServerSecretInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetSessionServerSecretInternalServerError) ToJSONString() string {
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

func (o *GetSessionServerSecretInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GetSessionServerSecretInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
