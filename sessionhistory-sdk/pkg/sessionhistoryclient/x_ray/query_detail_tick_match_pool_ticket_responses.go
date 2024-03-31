// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package x_ray

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclientmodels"
)

// QueryDetailTickMatchPoolTicketReader is a Reader for the QueryDetailTickMatchPoolTicket structure.
type QueryDetailTickMatchPoolTicketReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryDetailTickMatchPoolTicketReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryDetailTickMatchPoolTicketOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryDetailTickMatchPoolTicketBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryDetailTickMatchPoolTicketUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryDetailTickMatchPoolTicketForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryDetailTickMatchPoolTicketNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryDetailTickMatchPoolTicketInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/tickets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryDetailTickMatchPoolTicketOK creates a QueryDetailTickMatchPoolTicketOK with default headers values
func NewQueryDetailTickMatchPoolTicketOK() *QueryDetailTickMatchPoolTicketOK {
	return &QueryDetailTickMatchPoolTicketOK{}
}

/*QueryDetailTickMatchPoolTicketOK handles this case with default header values.

  OK
*/
type QueryDetailTickMatchPoolTicketOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayMatchPoolPodTickTicketResponse
}

func (o *QueryDetailTickMatchPoolTicketOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/tickets][%d] queryDetailTickMatchPoolTicketOK  %+v", 200, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolTicketOK) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolTicketOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayMatchPoolPodTickTicketResponse {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolTicketOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayMatchPoolPodTickTicketResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryDetailTickMatchPoolTicketBadRequest creates a QueryDetailTickMatchPoolTicketBadRequest with default headers values
func NewQueryDetailTickMatchPoolTicketBadRequest() *QueryDetailTickMatchPoolTicketBadRequest {
	return &QueryDetailTickMatchPoolTicketBadRequest{}
}

/*QueryDetailTickMatchPoolTicketBadRequest handles this case with default header values.

  Bad Request
*/
type QueryDetailTickMatchPoolTicketBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryDetailTickMatchPoolTicketBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/tickets][%d] queryDetailTickMatchPoolTicketBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolTicketBadRequest) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolTicketBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolTicketBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryDetailTickMatchPoolTicketUnauthorized creates a QueryDetailTickMatchPoolTicketUnauthorized with default headers values
func NewQueryDetailTickMatchPoolTicketUnauthorized() *QueryDetailTickMatchPoolTicketUnauthorized {
	return &QueryDetailTickMatchPoolTicketUnauthorized{}
}

/*QueryDetailTickMatchPoolTicketUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryDetailTickMatchPoolTicketUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryDetailTickMatchPoolTicketUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/tickets][%d] queryDetailTickMatchPoolTicketUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolTicketUnauthorized) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolTicketUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolTicketUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryDetailTickMatchPoolTicketForbidden creates a QueryDetailTickMatchPoolTicketForbidden with default headers values
func NewQueryDetailTickMatchPoolTicketForbidden() *QueryDetailTickMatchPoolTicketForbidden {
	return &QueryDetailTickMatchPoolTicketForbidden{}
}

/*QueryDetailTickMatchPoolTicketForbidden handles this case with default header values.

  Forbidden
*/
type QueryDetailTickMatchPoolTicketForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryDetailTickMatchPoolTicketForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/tickets][%d] queryDetailTickMatchPoolTicketForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolTicketForbidden) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolTicketForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolTicketForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryDetailTickMatchPoolTicketNotFound creates a QueryDetailTickMatchPoolTicketNotFound with default headers values
func NewQueryDetailTickMatchPoolTicketNotFound() *QueryDetailTickMatchPoolTicketNotFound {
	return &QueryDetailTickMatchPoolTicketNotFound{}
}

/*QueryDetailTickMatchPoolTicketNotFound handles this case with default header values.

  Not Found
*/
type QueryDetailTickMatchPoolTicketNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryDetailTickMatchPoolTicketNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/tickets][%d] queryDetailTickMatchPoolTicketNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolTicketNotFound) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolTicketNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolTicketNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryDetailTickMatchPoolTicketInternalServerError creates a QueryDetailTickMatchPoolTicketInternalServerError with default headers values
func NewQueryDetailTickMatchPoolTicketInternalServerError() *QueryDetailTickMatchPoolTicketInternalServerError {
	return &QueryDetailTickMatchPoolTicketInternalServerError{}
}

/*QueryDetailTickMatchPoolTicketInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryDetailTickMatchPoolTicketInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryDetailTickMatchPoolTicketInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/tickets][%d] queryDetailTickMatchPoolTicketInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolTicketInternalServerError) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolTicketInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolTicketInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
