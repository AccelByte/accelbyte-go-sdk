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

// GetStatDataReader is a Reader for the GetStatData structure.
type GetStatDataReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetStatDataReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetStatDataOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetStatDataBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetStatDataUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetStatDataForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetStatDataNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetStatDataInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/stats returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetStatDataOK creates a GetStatDataOK with default headers values
func NewGetStatDataOK() *GetStatDataOK {
	return &GetStatDataOK{}
}

/*GetStatDataOK handles this case with default header values.

  Stats queried
*/
type GetStatDataOK struct {
	Payload *matchmakingclientmodels.ModelsStatResumeResponse
}

func (o *GetStatDataOK) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/stats][%d] getStatDataOK  %+v", 200, o.ToJSONString())
}

func (o *GetStatDataOK) ToJSONString() string {
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

func (o *GetStatDataOK) GetPayload() *matchmakingclientmodels.ModelsStatResumeResponse {
	return o.Payload
}

func (o *GetStatDataOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ModelsStatResumeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetStatDataBadRequest creates a GetStatDataBadRequest with default headers values
func NewGetStatDataBadRequest() *GetStatDataBadRequest {
	return &GetStatDataBadRequest{}
}

/*GetStatDataBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type GetStatDataBadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetStatDataBadRequest) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/stats][%d] getStatDataBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetStatDataBadRequest) ToJSONString() string {
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

func (o *GetStatDataBadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetStatDataBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetStatDataUnauthorized creates a GetStatDataUnauthorized with default headers values
func NewGetStatDataUnauthorized() *GetStatDataUnauthorized {
	return &GetStatDataUnauthorized{}
}

/*GetStatDataUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetStatDataUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetStatDataUnauthorized) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/stats][%d] getStatDataUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetStatDataUnauthorized) ToJSONString() string {
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

func (o *GetStatDataUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetStatDataUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetStatDataForbidden creates a GetStatDataForbidden with default headers values
func NewGetStatDataForbidden() *GetStatDataForbidden {
	return &GetStatDataForbidden{}
}

/*GetStatDataForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type GetStatDataForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetStatDataForbidden) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/stats][%d] getStatDataForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetStatDataForbidden) ToJSONString() string {
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

func (o *GetStatDataForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetStatDataForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetStatDataNotFound creates a GetStatDataNotFound with default headers values
func NewGetStatDataNotFound() *GetStatDataNotFound {
	return &GetStatDataNotFound{}
}

/*GetStatDataNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>510110</td><td>channel not found</td></tr></table>
*/
type GetStatDataNotFound struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetStatDataNotFound) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/stats][%d] getStatDataNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetStatDataNotFound) ToJSONString() string {
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

func (o *GetStatDataNotFound) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetStatDataNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetStatDataInternalServerError creates a GetStatDataInternalServerError with default headers values
func NewGetStatDataInternalServerError() *GetStatDataInternalServerError {
	return &GetStatDataInternalServerError{}
}

/*GetStatDataInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetStatDataInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetStatDataInternalServerError) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/stats][%d] getStatDataInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetStatDataInternalServerError) ToJSONString() string {
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

func (o *GetStatDataInternalServerError) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetStatDataInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
