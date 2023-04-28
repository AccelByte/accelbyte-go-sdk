// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

// GetAllChannelsHandlerReader is a Reader for the GetAllChannelsHandler structure.
type GetAllChannelsHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAllChannelsHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAllChannelsHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetAllChannelsHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAllChannelsHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAllChannelsHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewGetAllChannelsHandlerConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAllChannelsHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /matchmaking/namespaces/{namespace}/channels returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAllChannelsHandlerOK creates a GetAllChannelsHandlerOK with default headers values
func NewGetAllChannelsHandlerOK() *GetAllChannelsHandlerOK {
	return &GetAllChannelsHandlerOK{}
}

/*GetAllChannelsHandlerOK handles this case with default header values.

  OK
*/
type GetAllChannelsHandlerOK struct {
	Payload *matchmakingclientmodels.ModelsGetChannelsResponse
}

func (o *GetAllChannelsHandlerOK) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/channels][%d] getAllChannelsHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *GetAllChannelsHandlerOK) ToJSONString() string {
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

func (o *GetAllChannelsHandlerOK) GetPayload() *matchmakingclientmodels.ModelsGetChannelsResponse {
	return o.Payload
}

func (o *GetAllChannelsHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ModelsGetChannelsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllChannelsHandlerBadRequest creates a GetAllChannelsHandlerBadRequest with default headers values
func NewGetAllChannelsHandlerBadRequest() *GetAllChannelsHandlerBadRequest {
	return &GetAllChannelsHandlerBadRequest{}
}

/*GetAllChannelsHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type GetAllChannelsHandlerBadRequest struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *GetAllChannelsHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/channels][%d] getAllChannelsHandlerBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetAllChannelsHandlerBadRequest) ToJSONString() string {
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

func (o *GetAllChannelsHandlerBadRequest) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAllChannelsHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllChannelsHandlerUnauthorized creates a GetAllChannelsHandlerUnauthorized with default headers values
func NewGetAllChannelsHandlerUnauthorized() *GetAllChannelsHandlerUnauthorized {
	return &GetAllChannelsHandlerUnauthorized{}
}

/*GetAllChannelsHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetAllChannelsHandlerUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *GetAllChannelsHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/channels][%d] getAllChannelsHandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAllChannelsHandlerUnauthorized) ToJSONString() string {
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

func (o *GetAllChannelsHandlerUnauthorized) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAllChannelsHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllChannelsHandlerForbidden creates a GetAllChannelsHandlerForbidden with default headers values
func NewGetAllChannelsHandlerForbidden() *GetAllChannelsHandlerForbidden {
	return &GetAllChannelsHandlerForbidden{}
}

/*GetAllChannelsHandlerForbidden handles this case with default header values.

  Forbidden
*/
type GetAllChannelsHandlerForbidden struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *GetAllChannelsHandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/channels][%d] getAllChannelsHandlerForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAllChannelsHandlerForbidden) ToJSONString() string {
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

func (o *GetAllChannelsHandlerForbidden) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAllChannelsHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllChannelsHandlerConflict creates a GetAllChannelsHandlerConflict with default headers values
func NewGetAllChannelsHandlerConflict() *GetAllChannelsHandlerConflict {
	return &GetAllChannelsHandlerConflict{}
}

/*GetAllChannelsHandlerConflict handles this case with default header values.

  Conflict
*/
type GetAllChannelsHandlerConflict struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *GetAllChannelsHandlerConflict) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/channels][%d] getAllChannelsHandlerConflict  %+v", 409, o.ToJSONString())
}

func (o *GetAllChannelsHandlerConflict) ToJSONString() string {
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

func (o *GetAllChannelsHandlerConflict) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAllChannelsHandlerConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllChannelsHandlerInternalServerError creates a GetAllChannelsHandlerInternalServerError with default headers values
func NewGetAllChannelsHandlerInternalServerError() *GetAllChannelsHandlerInternalServerError {
	return &GetAllChannelsHandlerInternalServerError{}
}

/*GetAllChannelsHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAllChannelsHandlerInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *GetAllChannelsHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/channels][%d] getAllChannelsHandlerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAllChannelsHandlerInternalServerError) ToJSONString() string {
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

func (o *GetAllChannelsHandlerInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAllChannelsHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
