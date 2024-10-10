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

// AdminQuerySessionReader is a Reader for the AdminQuerySession structure.
type AdminQuerySessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminQuerySessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminQuerySessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminQuerySessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminQuerySessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionbrowser/admin/namespaces/{namespace}/gamesession returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminQuerySessionOK creates a AdminQuerySessionOK with default headers values
func NewAdminQuerySessionOK() *AdminQuerySessionOK {
	return &AdminQuerySessionOK{}
}

/*AdminQuerySessionOK handles this case with default header values.

  session get
*/
type AdminQuerySessionOK struct {
	Payload *sessionbrowserclientmodels.ModelsSessionQueryResponse
}

func (o *AdminQuerySessionOK) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/gamesession][%d] adminQuerySessionOK  %+v", 200, o.ToJSONString())
}

func (o *AdminQuerySessionOK) ToJSONString() string {
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

func (o *AdminQuerySessionOK) GetPayload() *sessionbrowserclientmodels.ModelsSessionQueryResponse {
	return o.Payload
}

func (o *AdminQuerySessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQuerySessionBadRequest creates a AdminQuerySessionBadRequest with default headers values
func NewAdminQuerySessionBadRequest() *AdminQuerySessionBadRequest {
	return &AdminQuerySessionBadRequest{}
}

/*AdminQuerySessionBadRequest handles this case with default header values.

  malformed request
*/
type AdminQuerySessionBadRequest struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *AdminQuerySessionBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/gamesession][%d] adminQuerySessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminQuerySessionBadRequest) ToJSONString() string {
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

func (o *AdminQuerySessionBadRequest) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *AdminQuerySessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQuerySessionInternalServerError creates a AdminQuerySessionInternalServerError with default headers values
func NewAdminQuerySessionInternalServerError() *AdminQuerySessionInternalServerError {
	return &AdminQuerySessionInternalServerError{}
}

/*AdminQuerySessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminQuerySessionInternalServerError struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *AdminQuerySessionInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/gamesession][%d] adminQuerySessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminQuerySessionInternalServerError) ToJSONString() string {
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

func (o *AdminQuerySessionInternalServerError) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *AdminQuerySessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
