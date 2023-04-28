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

// GetRecentPlayerReader is a Reader for the GetRecentPlayer structure.
type GetRecentPlayerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetRecentPlayerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetRecentPlayerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetRecentPlayerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetRecentPlayerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionbrowser/namespaces/{namespace}/recentplayer/{userID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetRecentPlayerOK creates a GetRecentPlayerOK with default headers values
func NewGetRecentPlayerOK() *GetRecentPlayerOK {
	return &GetRecentPlayerOK{}
}

/*GetRecentPlayerOK handles this case with default header values.

  recent player get
*/
type GetRecentPlayerOK struct {
	Payload *sessionbrowserclientmodels.ModelsRecentPlayerQueryResponse
}

func (o *GetRecentPlayerOK) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/namespaces/{namespace}/recentplayer/{userID}][%d] getRecentPlayerOK  %+v", 200, o.ToJSONString())
}

func (o *GetRecentPlayerOK) ToJSONString() string {
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

func (o *GetRecentPlayerOK) GetPayload() *sessionbrowserclientmodels.ModelsRecentPlayerQueryResponse {
	return o.Payload
}

func (o *GetRecentPlayerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ModelsRecentPlayerQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetRecentPlayerBadRequest creates a GetRecentPlayerBadRequest with default headers values
func NewGetRecentPlayerBadRequest() *GetRecentPlayerBadRequest {
	return &GetRecentPlayerBadRequest{}
}

/*GetRecentPlayerBadRequest handles this case with default header values.

  malformed request
*/
type GetRecentPlayerBadRequest struct {
	Payload *sessionbrowserclientmodels.ResponseError
}

func (o *GetRecentPlayerBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/namespaces/{namespace}/recentplayer/{userID}][%d] getRecentPlayerBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetRecentPlayerBadRequest) ToJSONString() string {
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

func (o *GetRecentPlayerBadRequest) GetPayload() *sessionbrowserclientmodels.ResponseError {
	return o.Payload
}

func (o *GetRecentPlayerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetRecentPlayerInternalServerError creates a GetRecentPlayerInternalServerError with default headers values
func NewGetRecentPlayerInternalServerError() *GetRecentPlayerInternalServerError {
	return &GetRecentPlayerInternalServerError{}
}

/*GetRecentPlayerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetRecentPlayerInternalServerError struct {
	Payload *sessionbrowserclientmodels.ResponseError
}

func (o *GetRecentPlayerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/namespaces/{namespace}/recentplayer/{userID}][%d] getRecentPlayerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetRecentPlayerInternalServerError) ToJSONString() string {
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

func (o *GetRecentPlayerInternalServerError) GetPayload() *sessionbrowserclientmodels.ResponseError {
	return o.Payload
}

func (o *GetRecentPlayerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
