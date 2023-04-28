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

// GetSessionByUserIDsReader is a Reader for the GetSessionByUserIDs structure.
type GetSessionByUserIDsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetSessionByUserIDsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetSessionByUserIDsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetSessionByUserIDsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetSessionByUserIDsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionbrowser/namespaces/{namespace}/gamesession/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetSessionByUserIDsOK creates a GetSessionByUserIDsOK with default headers values
func NewGetSessionByUserIDsOK() *GetSessionByUserIDsOK {
	return &GetSessionByUserIDsOK{}
}

/*GetSessionByUserIDsOK handles this case with default header values.

  session get
*/
type GetSessionByUserIDsOK struct {
	Payload *sessionbrowserclientmodels.ModelsSessionByUserIDsResponse
}

func (o *GetSessionByUserIDsOK) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/namespaces/{namespace}/gamesession/bulk][%d] getSessionByUserIDsOK  %+v", 200, o.ToJSONString())
}

func (o *GetSessionByUserIDsOK) ToJSONString() string {
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

func (o *GetSessionByUserIDsOK) GetPayload() *sessionbrowserclientmodels.ModelsSessionByUserIDsResponse {
	return o.Payload
}

func (o *GetSessionByUserIDsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ModelsSessionByUserIDsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSessionByUserIDsBadRequest creates a GetSessionByUserIDsBadRequest with default headers values
func NewGetSessionByUserIDsBadRequest() *GetSessionByUserIDsBadRequest {
	return &GetSessionByUserIDsBadRequest{}
}

/*GetSessionByUserIDsBadRequest handles this case with default header values.

  malformed request
*/
type GetSessionByUserIDsBadRequest struct {
	Payload *sessionbrowserclientmodels.ResponseError
}

func (o *GetSessionByUserIDsBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/namespaces/{namespace}/gamesession/bulk][%d] getSessionByUserIDsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetSessionByUserIDsBadRequest) ToJSONString() string {
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

func (o *GetSessionByUserIDsBadRequest) GetPayload() *sessionbrowserclientmodels.ResponseError {
	return o.Payload
}

func (o *GetSessionByUserIDsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetSessionByUserIDsInternalServerError creates a GetSessionByUserIDsInternalServerError with default headers values
func NewGetSessionByUserIDsInternalServerError() *GetSessionByUserIDsInternalServerError {
	return &GetSessionByUserIDsInternalServerError{}
}

/*GetSessionByUserIDsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetSessionByUserIDsInternalServerError struct {
	Payload *sessionbrowserclientmodels.ResponseError
}

func (o *GetSessionByUserIDsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/namespaces/{namespace}/gamesession/bulk][%d] getSessionByUserIDsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetSessionByUserIDsInternalServerError) ToJSONString() string {
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

func (o *GetSessionByUserIDsInternalServerError) GetPayload() *sessionbrowserclientmodels.ResponseError {
	return o.Payload
}

func (o *GetSessionByUserIDsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
