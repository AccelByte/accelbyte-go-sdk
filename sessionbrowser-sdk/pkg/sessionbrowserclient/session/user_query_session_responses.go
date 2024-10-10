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

// UserQuerySessionReader is a Reader for the UserQuerySession structure.
type UserQuerySessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UserQuerySessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUserQuerySessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUserQuerySessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUserQuerySessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionbrowser/namespaces/{namespace}/gamesession returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUserQuerySessionOK creates a UserQuerySessionOK with default headers values
func NewUserQuerySessionOK() *UserQuerySessionOK {
	return &UserQuerySessionOK{}
}

/*UserQuerySessionOK handles this case with default header values.

  session get
*/
type UserQuerySessionOK struct {
	Payload *sessionbrowserclientmodels.ModelsSessionQueryResponse
}

func (o *UserQuerySessionOK) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/namespaces/{namespace}/gamesession][%d] userQuerySessionOK  %+v", 200, o.ToJSONString())
}

func (o *UserQuerySessionOK) ToJSONString() string {
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

func (o *UserQuerySessionOK) GetPayload() *sessionbrowserclientmodels.ModelsSessionQueryResponse {
	return o.Payload
}

func (o *UserQuerySessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ModelsSessionQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUserQuerySessionBadRequest creates a UserQuerySessionBadRequest with default headers values
func NewUserQuerySessionBadRequest() *UserQuerySessionBadRequest {
	return &UserQuerySessionBadRequest{}
}

/*UserQuerySessionBadRequest handles this case with default header values.

  malformed request
*/
type UserQuerySessionBadRequest struct {
	Payload *sessionbrowserclientmodels.ResponseError
}

func (o *UserQuerySessionBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/namespaces/{namespace}/gamesession][%d] userQuerySessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UserQuerySessionBadRequest) ToJSONString() string {
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

func (o *UserQuerySessionBadRequest) GetPayload() *sessionbrowserclientmodels.ResponseError {
	return o.Payload
}

func (o *UserQuerySessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUserQuerySessionInternalServerError creates a UserQuerySessionInternalServerError with default headers values
func NewUserQuerySessionInternalServerError() *UserQuerySessionInternalServerError {
	return &UserQuerySessionInternalServerError{}
}

/*UserQuerySessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UserQuerySessionInternalServerError struct {
	Payload *sessionbrowserclientmodels.ResponseError
}

func (o *UserQuerySessionInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/namespaces/{namespace}/gamesession][%d] userQuerySessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UserQuerySessionInternalServerError) ToJSONString() string {
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

func (o *UserQuerySessionInternalServerError) GetPayload() *sessionbrowserclientmodels.ResponseError {
	return o.Payload
}

func (o *UserQuerySessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
