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

// GetAllPartyInChannelReader is a Reader for the GetAllPartyInChannel structure.
type GetAllPartyInChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAllPartyInChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAllPartyInChannelOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetAllPartyInChannelBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAllPartyInChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAllPartyInChannelForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAllPartyInChannelNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAllPartyInChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/parties returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAllPartyInChannelOK creates a GetAllPartyInChannelOK with default headers values
func NewGetAllPartyInChannelOK() *GetAllPartyInChannelOK {
	return &GetAllPartyInChannelOK{}
}

/*GetAllPartyInChannelOK handles this case with default header values.

  Operation succeeded
*/
type GetAllPartyInChannelOK struct {
	Payload []*matchmakingclientmodels.ModelsMatchingParty
}

func (o *GetAllPartyInChannelOK) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/parties][%d] getAllPartyInChannelOK  %+v", 200, o.ToJSONString())
}

func (o *GetAllPartyInChannelOK) ToJSONString() string {
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

func (o *GetAllPartyInChannelOK) GetPayload() []*matchmakingclientmodels.ModelsMatchingParty {
	return o.Payload
}

func (o *GetAllPartyInChannelOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllPartyInChannelBadRequest creates a GetAllPartyInChannelBadRequest with default headers values
func NewGetAllPartyInChannelBadRequest() *GetAllPartyInChannelBadRequest {
	return &GetAllPartyInChannelBadRequest{}
}

/*GetAllPartyInChannelBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type GetAllPartyInChannelBadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetAllPartyInChannelBadRequest) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/parties][%d] getAllPartyInChannelBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetAllPartyInChannelBadRequest) ToJSONString() string {
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

func (o *GetAllPartyInChannelBadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetAllPartyInChannelBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllPartyInChannelUnauthorized creates a GetAllPartyInChannelUnauthorized with default headers values
func NewGetAllPartyInChannelUnauthorized() *GetAllPartyInChannelUnauthorized {
	return &GetAllPartyInChannelUnauthorized{}
}

/*GetAllPartyInChannelUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetAllPartyInChannelUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetAllPartyInChannelUnauthorized) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/parties][%d] getAllPartyInChannelUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAllPartyInChannelUnauthorized) ToJSONString() string {
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

func (o *GetAllPartyInChannelUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetAllPartyInChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllPartyInChannelForbidden creates a GetAllPartyInChannelForbidden with default headers values
func NewGetAllPartyInChannelForbidden() *GetAllPartyInChannelForbidden {
	return &GetAllPartyInChannelForbidden{}
}

/*GetAllPartyInChannelForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type GetAllPartyInChannelForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetAllPartyInChannelForbidden) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/parties][%d] getAllPartyInChannelForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAllPartyInChannelForbidden) ToJSONString() string {
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

func (o *GetAllPartyInChannelForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetAllPartyInChannelForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllPartyInChannelNotFound creates a GetAllPartyInChannelNotFound with default headers values
func NewGetAllPartyInChannelNotFound() *GetAllPartyInChannelNotFound {
	return &GetAllPartyInChannelNotFound{}
}

/*GetAllPartyInChannelNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>510110</td><td>channel not found</td></tr></table>
*/
type GetAllPartyInChannelNotFound struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetAllPartyInChannelNotFound) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/parties][%d] getAllPartyInChannelNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAllPartyInChannelNotFound) ToJSONString() string {
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

func (o *GetAllPartyInChannelNotFound) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetAllPartyInChannelNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllPartyInChannelInternalServerError creates a GetAllPartyInChannelInternalServerError with default headers values
func NewGetAllPartyInChannelInternalServerError() *GetAllPartyInChannelInternalServerError {
	return &GetAllPartyInChannelInternalServerError{}
}

/*GetAllPartyInChannelInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetAllPartyInChannelInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *GetAllPartyInChannelInternalServerError) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/parties][%d] getAllPartyInChannelInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAllPartyInChannelInternalServerError) ToJSONString() string {
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

func (o *GetAllPartyInChannelInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAllPartyInChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
