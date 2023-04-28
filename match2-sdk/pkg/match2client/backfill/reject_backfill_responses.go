// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package backfill

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// RejectBackfillReader is a Reader for the RejectBackfill structure.
type RejectBackfillReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RejectBackfillReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRejectBackfillOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRejectBackfillBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRejectBackfillUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRejectBackfillForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRejectBackfillNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRejectBackfillInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/reject returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRejectBackfillOK creates a RejectBackfillOK with default headers values
func NewRejectBackfillOK() *RejectBackfillOK {
	return &RejectBackfillOK{}
}

/*RejectBackfillOK handles this case with default header values.

  OK
*/
type RejectBackfillOK struct {
}

func (o *RejectBackfillOK) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/reject][%d] rejectBackfillOK ", 200)
}

func (o *RejectBackfillOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRejectBackfillBadRequest creates a RejectBackfillBadRequest with default headers values
func NewRejectBackfillBadRequest() *RejectBackfillBadRequest {
	return &RejectBackfillBadRequest{}
}

/*RejectBackfillBadRequest handles this case with default header values.

  Bad Request
*/
type RejectBackfillBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *RejectBackfillBadRequest) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/reject][%d] rejectBackfillBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RejectBackfillBadRequest) ToJSONString() string {
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

func (o *RejectBackfillBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *RejectBackfillBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRejectBackfillUnauthorized creates a RejectBackfillUnauthorized with default headers values
func NewRejectBackfillUnauthorized() *RejectBackfillUnauthorized {
	return &RejectBackfillUnauthorized{}
}

/*RejectBackfillUnauthorized handles this case with default header values.

  Unauthorized
*/
type RejectBackfillUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *RejectBackfillUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/reject][%d] rejectBackfillUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *RejectBackfillUnauthorized) ToJSONString() string {
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

func (o *RejectBackfillUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *RejectBackfillUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRejectBackfillForbidden creates a RejectBackfillForbidden with default headers values
func NewRejectBackfillForbidden() *RejectBackfillForbidden {
	return &RejectBackfillForbidden{}
}

/*RejectBackfillForbidden handles this case with default header values.

  Forbidden
*/
type RejectBackfillForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *RejectBackfillForbidden) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/reject][%d] rejectBackfillForbidden  %+v", 403, o.ToJSONString())
}

func (o *RejectBackfillForbidden) ToJSONString() string {
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

func (o *RejectBackfillForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *RejectBackfillForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRejectBackfillNotFound creates a RejectBackfillNotFound with default headers values
func NewRejectBackfillNotFound() *RejectBackfillNotFound {
	return &RejectBackfillNotFound{}
}

/*RejectBackfillNotFound handles this case with default header values.

  Not Found
*/
type RejectBackfillNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *RejectBackfillNotFound) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/reject][%d] rejectBackfillNotFound  %+v", 404, o.ToJSONString())
}

func (o *RejectBackfillNotFound) ToJSONString() string {
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

func (o *RejectBackfillNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *RejectBackfillNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRejectBackfillInternalServerError creates a RejectBackfillInternalServerError with default headers values
func NewRejectBackfillInternalServerError() *RejectBackfillInternalServerError {
	return &RejectBackfillInternalServerError{}
}

/*RejectBackfillInternalServerError handles this case with default header values.

  Internal Server Error
*/
type RejectBackfillInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *RejectBackfillInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/reject][%d] rejectBackfillInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RejectBackfillInternalServerError) ToJSONString() string {
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

func (o *RejectBackfillInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *RejectBackfillInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
