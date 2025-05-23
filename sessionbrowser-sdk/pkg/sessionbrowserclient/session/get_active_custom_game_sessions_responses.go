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

// GetActiveCustomGameSessionsReader is a Reader for the GetActiveCustomGameSessions structure.
type GetActiveCustomGameSessionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetActiveCustomGameSessionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetActiveCustomGameSessionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetActiveCustomGameSessionsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetActiveCustomGameSessionsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/custom-game returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetActiveCustomGameSessionsOK creates a GetActiveCustomGameSessionsOK with default headers values
func NewGetActiveCustomGameSessionsOK() *GetActiveCustomGameSessionsOK {
	return &GetActiveCustomGameSessionsOK{}
}

/*GetActiveCustomGameSessionsOK handles this case with default header values.

  custom game session list
*/
type GetActiveCustomGameSessionsOK struct {
	Payload *sessionbrowserclientmodels.ModelsActiveCustomGameResponse
}

func (o *GetActiveCustomGameSessionsOK) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/custom-game][%d] getActiveCustomGameSessionsOK  %+v", 200, o.ToJSONString())
}

func (o *GetActiveCustomGameSessionsOK) ToJSONString() string {
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

func (o *GetActiveCustomGameSessionsOK) GetPayload() *sessionbrowserclientmodels.ModelsActiveCustomGameResponse {
	return o.Payload
}

func (o *GetActiveCustomGameSessionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ModelsActiveCustomGameResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetActiveCustomGameSessionsBadRequest creates a GetActiveCustomGameSessionsBadRequest with default headers values
func NewGetActiveCustomGameSessionsBadRequest() *GetActiveCustomGameSessionsBadRequest {
	return &GetActiveCustomGameSessionsBadRequest{}
}

/*GetActiveCustomGameSessionsBadRequest handles this case with default header values.

  malformed request
*/
type GetActiveCustomGameSessionsBadRequest struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *GetActiveCustomGameSessionsBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/custom-game][%d] getActiveCustomGameSessionsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetActiveCustomGameSessionsBadRequest) ToJSONString() string {
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

func (o *GetActiveCustomGameSessionsBadRequest) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *GetActiveCustomGameSessionsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetActiveCustomGameSessionsInternalServerError creates a GetActiveCustomGameSessionsInternalServerError with default headers values
func NewGetActiveCustomGameSessionsInternalServerError() *GetActiveCustomGameSessionsInternalServerError {
	return &GetActiveCustomGameSessionsInternalServerError{}
}

/*GetActiveCustomGameSessionsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetActiveCustomGameSessionsInternalServerError struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *GetActiveCustomGameSessionsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/custom-game][%d] getActiveCustomGameSessionsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetActiveCustomGameSessionsInternalServerError) ToJSONString() string {
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

func (o *GetActiveCustomGameSessionsInternalServerError) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *GetActiveCustomGameSessionsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
