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

// GetMatchPoolMetricReader is a Reader for the GetMatchPoolMetric structure.
type GetMatchPoolMetricReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetMatchPoolMetricReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetMatchPoolMetricOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetMatchPoolMetricUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetMatchPoolMetricForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetMatchPoolMetricNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetMatchPoolMetricInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /matchmaking/namespaces/{namespace}/channels/{channelName}/metrics returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetMatchPoolMetricOK creates a GetMatchPoolMetricOK with default headers values
func NewGetMatchPoolMetricOK() *GetMatchPoolMetricOK {
	return &GetMatchPoolMetricOK{}
}

/*GetMatchPoolMetricOK handles this case with default header values.

  OK
*/
type GetMatchPoolMetricOK struct {
	Payload *matchmakingclientmodels.ModelsTicketMetricResultRecord
}

func (o *GetMatchPoolMetricOK) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/channels/{channelName}/metrics][%d] getMatchPoolMetricOK  %+v", 200, o.ToJSONString())
}

func (o *GetMatchPoolMetricOK) ToJSONString() string {
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

func (o *GetMatchPoolMetricOK) GetPayload() *matchmakingclientmodels.ModelsTicketMetricResultRecord {
	return o.Payload
}

func (o *GetMatchPoolMetricOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ModelsTicketMetricResultRecord)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMatchPoolMetricUnauthorized creates a GetMatchPoolMetricUnauthorized with default headers values
func NewGetMatchPoolMetricUnauthorized() *GetMatchPoolMetricUnauthorized {
	return &GetMatchPoolMetricUnauthorized{}
}

/*GetMatchPoolMetricUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetMatchPoolMetricUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *GetMatchPoolMetricUnauthorized) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/channels/{channelName}/metrics][%d] getMatchPoolMetricUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetMatchPoolMetricUnauthorized) ToJSONString() string {
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

func (o *GetMatchPoolMetricUnauthorized) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *GetMatchPoolMetricUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMatchPoolMetricForbidden creates a GetMatchPoolMetricForbidden with default headers values
func NewGetMatchPoolMetricForbidden() *GetMatchPoolMetricForbidden {
	return &GetMatchPoolMetricForbidden{}
}

/*GetMatchPoolMetricForbidden handles this case with default header values.

  Forbidden
*/
type GetMatchPoolMetricForbidden struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *GetMatchPoolMetricForbidden) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/channels/{channelName}/metrics][%d] getMatchPoolMetricForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetMatchPoolMetricForbidden) ToJSONString() string {
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

func (o *GetMatchPoolMetricForbidden) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *GetMatchPoolMetricForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMatchPoolMetricNotFound creates a GetMatchPoolMetricNotFound with default headers values
func NewGetMatchPoolMetricNotFound() *GetMatchPoolMetricNotFound {
	return &GetMatchPoolMetricNotFound{}
}

/*GetMatchPoolMetricNotFound handles this case with default header values.

  Not Found
*/
type GetMatchPoolMetricNotFound struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *GetMatchPoolMetricNotFound) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/channels/{channelName}/metrics][%d] getMatchPoolMetricNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetMatchPoolMetricNotFound) ToJSONString() string {
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

func (o *GetMatchPoolMetricNotFound) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *GetMatchPoolMetricNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMatchPoolMetricInternalServerError creates a GetMatchPoolMetricInternalServerError with default headers values
func NewGetMatchPoolMetricInternalServerError() *GetMatchPoolMetricInternalServerError {
	return &GetMatchPoolMetricInternalServerError{}
}

/*GetMatchPoolMetricInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetMatchPoolMetricInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *GetMatchPoolMetricInternalServerError) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/channels/{channelName}/metrics][%d] getMatchPoolMetricInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetMatchPoolMetricInternalServerError) ToJSONString() string {
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

func (o *GetMatchPoolMetricInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *GetMatchPoolMetricInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
