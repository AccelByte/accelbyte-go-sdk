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

// QueryXrayTimelineByUserIDReader is a Reader for the QueryXrayTimelineByUserID structure.
type QueryXrayTimelineByUserIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryXrayTimelineByUserIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryXrayTimelineByUserIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryXrayTimelineByUserIDBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryXrayTimelineByUserIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryXrayTimelineByUserIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryXrayTimelineByUserIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryXrayTimelineByUserIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/users/{userId}/tickets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryXrayTimelineByUserIDOK creates a QueryXrayTimelineByUserIDOK with default headers values
func NewQueryXrayTimelineByUserIDOK() *QueryXrayTimelineByUserIDOK {
	return &QueryXrayTimelineByUserIDOK{}
}

/*QueryXrayTimelineByUserIDOK handles this case with default header values.

  OK
*/
type QueryXrayTimelineByUserIDOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayTicketQueryResponse
}

func (o *QueryXrayTimelineByUserIDOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/users/{userId}/tickets][%d] queryXrayTimelineByUserIdOK  %+v", 200, o.ToJSONString())
}

func (o *QueryXrayTimelineByUserIDOK) ToJSONString() string {
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

func (o *QueryXrayTimelineByUserIDOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayTicketQueryResponse {
	return o.Payload
}

func (o *QueryXrayTimelineByUserIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayTicketQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryXrayTimelineByUserIDBadRequest creates a QueryXrayTimelineByUserIDBadRequest with default headers values
func NewQueryXrayTimelineByUserIDBadRequest() *QueryXrayTimelineByUserIDBadRequest {
	return &QueryXrayTimelineByUserIDBadRequest{}
}

/*QueryXrayTimelineByUserIDBadRequest handles this case with default header values.

  Bad Request
*/
type QueryXrayTimelineByUserIDBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayTimelineByUserIDBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/users/{userId}/tickets][%d] queryXrayTimelineByUserIdBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryXrayTimelineByUserIDBadRequest) ToJSONString() string {
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

func (o *QueryXrayTimelineByUserIDBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayTimelineByUserIDBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryXrayTimelineByUserIDUnauthorized creates a QueryXrayTimelineByUserIDUnauthorized with default headers values
func NewQueryXrayTimelineByUserIDUnauthorized() *QueryXrayTimelineByUserIDUnauthorized {
	return &QueryXrayTimelineByUserIDUnauthorized{}
}

/*QueryXrayTimelineByUserIDUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryXrayTimelineByUserIDUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayTimelineByUserIDUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/users/{userId}/tickets][%d] queryXrayTimelineByUserIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryXrayTimelineByUserIDUnauthorized) ToJSONString() string {
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

func (o *QueryXrayTimelineByUserIDUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayTimelineByUserIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryXrayTimelineByUserIDForbidden creates a QueryXrayTimelineByUserIDForbidden with default headers values
func NewQueryXrayTimelineByUserIDForbidden() *QueryXrayTimelineByUserIDForbidden {
	return &QueryXrayTimelineByUserIDForbidden{}
}

/*QueryXrayTimelineByUserIDForbidden handles this case with default header values.

  Forbidden
*/
type QueryXrayTimelineByUserIDForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayTimelineByUserIDForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/users/{userId}/tickets][%d] queryXrayTimelineByUserIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryXrayTimelineByUserIDForbidden) ToJSONString() string {
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

func (o *QueryXrayTimelineByUserIDForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayTimelineByUserIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryXrayTimelineByUserIDNotFound creates a QueryXrayTimelineByUserIDNotFound with default headers values
func NewQueryXrayTimelineByUserIDNotFound() *QueryXrayTimelineByUserIDNotFound {
	return &QueryXrayTimelineByUserIDNotFound{}
}

/*QueryXrayTimelineByUserIDNotFound handles this case with default header values.

  Not Found
*/
type QueryXrayTimelineByUserIDNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayTimelineByUserIDNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/users/{userId}/tickets][%d] queryXrayTimelineByUserIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryXrayTimelineByUserIDNotFound) ToJSONString() string {
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

func (o *QueryXrayTimelineByUserIDNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayTimelineByUserIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryXrayTimelineByUserIDInternalServerError creates a QueryXrayTimelineByUserIDInternalServerError with default headers values
func NewQueryXrayTimelineByUserIDInternalServerError() *QueryXrayTimelineByUserIDInternalServerError {
	return &QueryXrayTimelineByUserIDInternalServerError{}
}

/*QueryXrayTimelineByUserIDInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryXrayTimelineByUserIDInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayTimelineByUserIDInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/users/{userId}/tickets][%d] queryXrayTimelineByUserIdInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryXrayTimelineByUserIDInternalServerError) ToJSONString() string {
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

func (o *QueryXrayTimelineByUserIDInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayTimelineByUserIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
