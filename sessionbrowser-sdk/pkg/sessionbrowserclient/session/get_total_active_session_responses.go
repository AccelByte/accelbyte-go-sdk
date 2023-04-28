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

// GetTotalActiveSessionReader is a Reader for the GetTotalActiveSession structure.
type GetTotalActiveSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetTotalActiveSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetTotalActiveSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetTotalActiveSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetTotalActiveSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/count returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetTotalActiveSessionOK creates a GetTotalActiveSessionOK with default headers values
func NewGetTotalActiveSessionOK() *GetTotalActiveSessionOK {
	return &GetTotalActiveSessionOK{}
}

/*GetTotalActiveSessionOK handles this case with default header values.

  total active session, p2p session will only have 'total' attribute
*/
type GetTotalActiveSessionOK struct {
	Payload *sessionbrowserclientmodels.ModelsCountActiveSessionResponse
}

func (o *GetTotalActiveSessionOK) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/count][%d] getTotalActiveSessionOK  %+v", 200, o.ToJSONString())
}

func (o *GetTotalActiveSessionOK) ToJSONString() string {
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

func (o *GetTotalActiveSessionOK) GetPayload() *sessionbrowserclientmodels.ModelsCountActiveSessionResponse {
	return o.Payload
}

func (o *GetTotalActiveSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ModelsCountActiveSessionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetTotalActiveSessionBadRequest creates a GetTotalActiveSessionBadRequest with default headers values
func NewGetTotalActiveSessionBadRequest() *GetTotalActiveSessionBadRequest {
	return &GetTotalActiveSessionBadRequest{}
}

/*GetTotalActiveSessionBadRequest handles this case with default header values.

  malformed request
*/
type GetTotalActiveSessionBadRequest struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *GetTotalActiveSessionBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/count][%d] getTotalActiveSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetTotalActiveSessionBadRequest) ToJSONString() string {
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

func (o *GetTotalActiveSessionBadRequest) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *GetTotalActiveSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetTotalActiveSessionInternalServerError creates a GetTotalActiveSessionInternalServerError with default headers values
func NewGetTotalActiveSessionInternalServerError() *GetTotalActiveSessionInternalServerError {
	return &GetTotalActiveSessionInternalServerError{}
}

/*GetTotalActiveSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetTotalActiveSessionInternalServerError struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *GetTotalActiveSessionInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/count][%d] getTotalActiveSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetTotalActiveSessionInternalServerError) ToJSONString() string {
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

func (o *GetTotalActiveSessionInternalServerError) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *GetTotalActiveSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
