// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_player_record

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// GetPlayerRecordsBulkHandlerV1Reader is a Reader for the GetPlayerRecordsBulkHandlerV1 structure.
type GetPlayerRecordsBulkHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPlayerRecordsBulkHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPlayerRecordsBulkHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetPlayerRecordsBulkHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetPlayerRecordsBulkHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetPlayerRecordsBulkHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetPlayerRecordsBulkHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/namespaces/{namespace}/users/me/records/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPlayerRecordsBulkHandlerV1OK creates a GetPlayerRecordsBulkHandlerV1OK with default headers values
func NewGetPlayerRecordsBulkHandlerV1OK() *GetPlayerRecordsBulkHandlerV1OK {
	return &GetPlayerRecordsBulkHandlerV1OK{}
}

/*GetPlayerRecordsBulkHandlerV1OK handles this case with default header values.

  Successful operation
*/
type GetPlayerRecordsBulkHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse
}

func (o *GetPlayerRecordsBulkHandlerV1OK) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/me/records/bulk][%d] getPlayerRecordsBulkHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetPlayerRecordsBulkHandlerV1OK) ToJSONString() string {
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

func (o *GetPlayerRecordsBulkHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse {
	return o.Payload
}

func (o *GetPlayerRecordsBulkHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPlayerRecordsBulkHandlerV1BadRequest creates a GetPlayerRecordsBulkHandlerV1BadRequest with default headers values
func NewGetPlayerRecordsBulkHandlerV1BadRequest() *GetPlayerRecordsBulkHandlerV1BadRequest {
	return &GetPlayerRecordsBulkHandlerV1BadRequest{}
}

/*GetPlayerRecordsBulkHandlerV1BadRequest handles this case with default header values.

  Bad Request
*/
type GetPlayerRecordsBulkHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetPlayerRecordsBulkHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/me/records/bulk][%d] getPlayerRecordsBulkHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetPlayerRecordsBulkHandlerV1BadRequest) ToJSONString() string {
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

func (o *GetPlayerRecordsBulkHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetPlayerRecordsBulkHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPlayerRecordsBulkHandlerV1Unauthorized creates a GetPlayerRecordsBulkHandlerV1Unauthorized with default headers values
func NewGetPlayerRecordsBulkHandlerV1Unauthorized() *GetPlayerRecordsBulkHandlerV1Unauthorized {
	return &GetPlayerRecordsBulkHandlerV1Unauthorized{}
}

/*GetPlayerRecordsBulkHandlerV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetPlayerRecordsBulkHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetPlayerRecordsBulkHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/me/records/bulk][%d] getPlayerRecordsBulkHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetPlayerRecordsBulkHandlerV1Unauthorized) ToJSONString() string {
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

func (o *GetPlayerRecordsBulkHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetPlayerRecordsBulkHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPlayerRecordsBulkHandlerV1Forbidden creates a GetPlayerRecordsBulkHandlerV1Forbidden with default headers values
func NewGetPlayerRecordsBulkHandlerV1Forbidden() *GetPlayerRecordsBulkHandlerV1Forbidden {
	return &GetPlayerRecordsBulkHandlerV1Forbidden{}
}

/*GetPlayerRecordsBulkHandlerV1Forbidden handles this case with default header values.

  Forbidden
*/
type GetPlayerRecordsBulkHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetPlayerRecordsBulkHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/me/records/bulk][%d] getPlayerRecordsBulkHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetPlayerRecordsBulkHandlerV1Forbidden) ToJSONString() string {
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

func (o *GetPlayerRecordsBulkHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetPlayerRecordsBulkHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPlayerRecordsBulkHandlerV1InternalServerError creates a GetPlayerRecordsBulkHandlerV1InternalServerError with default headers values
func NewGetPlayerRecordsBulkHandlerV1InternalServerError() *GetPlayerRecordsBulkHandlerV1InternalServerError {
	return &GetPlayerRecordsBulkHandlerV1InternalServerError{}
}

/*GetPlayerRecordsBulkHandlerV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetPlayerRecordsBulkHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetPlayerRecordsBulkHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/me/records/bulk][%d] getPlayerRecordsBulkHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetPlayerRecordsBulkHandlerV1InternalServerError) ToJSONString() string {
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

func (o *GetPlayerRecordsBulkHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetPlayerRecordsBulkHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
