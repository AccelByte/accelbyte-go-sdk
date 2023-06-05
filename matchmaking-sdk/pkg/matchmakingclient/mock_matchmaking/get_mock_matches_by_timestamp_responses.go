// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package mock_matchmaking

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

// GetMockMatchesByTimestampReader is a Reader for the GetMockMatchesByTimestamp structure.
type GetMockMatchesByTimestampReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetMockMatchesByTimestampReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetMockMatchesByTimestampOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetMockMatchesByTimestampBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetMockMatchesByTimestampUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetMockMatchesByTimestampForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetMockMatchesByTimestampNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetMockMatchesByTimestampInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/matches returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetMockMatchesByTimestampOK creates a GetMockMatchesByTimestampOK with default headers values
func NewGetMockMatchesByTimestampOK() *GetMockMatchesByTimestampOK {
	return &GetMockMatchesByTimestampOK{}
}

/*GetMockMatchesByTimestampOK handles this case with default header values.

  Mock matches queried
*/
type GetMockMatchesByTimestampOK struct {
	Payload *matchmakingclientmodels.ModelsGetMockMatchesResponse
}

func (o *GetMockMatchesByTimestampOK) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/matches][%d] getMockMatchesByTimestampOK  %+v", 200, o.ToJSONString())
}

func (o *GetMockMatchesByTimestampOK) ToJSONString() string {
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

func (o *GetMockMatchesByTimestampOK) GetPayload() *matchmakingclientmodels.ModelsGetMockMatchesResponse {
	return o.Payload
}

func (o *GetMockMatchesByTimestampOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ModelsGetMockMatchesResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMockMatchesByTimestampBadRequest creates a GetMockMatchesByTimestampBadRequest with default headers values
func NewGetMockMatchesByTimestampBadRequest() *GetMockMatchesByTimestampBadRequest {
	return &GetMockMatchesByTimestampBadRequest{}
}

/*GetMockMatchesByTimestampBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type GetMockMatchesByTimestampBadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetMockMatchesByTimestampBadRequest) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/matches][%d] getMockMatchesByTimestampBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetMockMatchesByTimestampBadRequest) ToJSONString() string {
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

func (o *GetMockMatchesByTimestampBadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetMockMatchesByTimestampBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetMockMatchesByTimestampUnauthorized creates a GetMockMatchesByTimestampUnauthorized with default headers values
func NewGetMockMatchesByTimestampUnauthorized() *GetMockMatchesByTimestampUnauthorized {
	return &GetMockMatchesByTimestampUnauthorized{}
}

/*GetMockMatchesByTimestampUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetMockMatchesByTimestampUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetMockMatchesByTimestampUnauthorized) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/matches][%d] getMockMatchesByTimestampUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetMockMatchesByTimestampUnauthorized) ToJSONString() string {
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

func (o *GetMockMatchesByTimestampUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetMockMatchesByTimestampUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetMockMatchesByTimestampForbidden creates a GetMockMatchesByTimestampForbidden with default headers values
func NewGetMockMatchesByTimestampForbidden() *GetMockMatchesByTimestampForbidden {
	return &GetMockMatchesByTimestampForbidden{}
}

/*GetMockMatchesByTimestampForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type GetMockMatchesByTimestampForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetMockMatchesByTimestampForbidden) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/matches][%d] getMockMatchesByTimestampForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetMockMatchesByTimestampForbidden) ToJSONString() string {
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

func (o *GetMockMatchesByTimestampForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetMockMatchesByTimestampForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetMockMatchesByTimestampNotFound creates a GetMockMatchesByTimestampNotFound with default headers values
func NewGetMockMatchesByTimestampNotFound() *GetMockMatchesByTimestampNotFound {
	return &GetMockMatchesByTimestampNotFound{}
}

/*GetMockMatchesByTimestampNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>510110</td><td>channel not found</td></tr></table>
*/
type GetMockMatchesByTimestampNotFound struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetMockMatchesByTimestampNotFound) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/matches][%d] getMockMatchesByTimestampNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetMockMatchesByTimestampNotFound) ToJSONString() string {
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

func (o *GetMockMatchesByTimestampNotFound) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetMockMatchesByTimestampNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetMockMatchesByTimestampInternalServerError creates a GetMockMatchesByTimestampInternalServerError with default headers values
func NewGetMockMatchesByTimestampInternalServerError() *GetMockMatchesByTimestampInternalServerError {
	return &GetMockMatchesByTimestampInternalServerError{}
}

/*GetMockMatchesByTimestampInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetMockMatchesByTimestampInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetMockMatchesByTimestampInternalServerError) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/matches][%d] getMockMatchesByTimestampInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetMockMatchesByTimestampInternalServerError) ToJSONString() string {
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

func (o *GetMockMatchesByTimestampInternalServerError) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetMockMatchesByTimestampInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
