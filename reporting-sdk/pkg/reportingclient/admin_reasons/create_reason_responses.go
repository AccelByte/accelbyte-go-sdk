// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_reasons

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
)

// CreateReasonReader is a Reader for the CreateReason structure.
type CreateReasonReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateReasonReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateReasonCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateReasonBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateReasonConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateReasonInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /reporting/v1/admin/namespaces/{namespace}/reasons returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateReasonCreated creates a CreateReasonCreated with default headers values
func NewCreateReasonCreated() *CreateReasonCreated {
	return &CreateReasonCreated{}
}

/*CreateReasonCreated handles this case with default header values.


 */
type CreateReasonCreated struct {
	Payload *reportingclientmodels.RestapiAdminReasonResponse
}

func (o *CreateReasonCreated) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/reasons][%d] createReasonCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateReasonCreated) ToJSONString() string {
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

func (o *CreateReasonCreated) GetPayload() *reportingclientmodels.RestapiAdminReasonResponse {
	return o.Payload
}

func (o *CreateReasonCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiAdminReasonResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateReasonBadRequest creates a CreateReasonBadRequest with default headers values
func NewCreateReasonBadRequest() *CreateReasonBadRequest {
	return &CreateReasonBadRequest{}
}

/*CreateReasonBadRequest handles this case with default header values.


 */
type CreateReasonBadRequest struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *CreateReasonBadRequest) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/reasons][%d] createReasonBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateReasonBadRequest) ToJSONString() string {
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

func (o *CreateReasonBadRequest) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *CreateReasonBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateReasonConflict creates a CreateReasonConflict with default headers values
func NewCreateReasonConflict() *CreateReasonConflict {
	return &CreateReasonConflict{}
}

/*CreateReasonConflict handles this case with default header values.

  Conflict
*/
type CreateReasonConflict struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *CreateReasonConflict) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/reasons][%d] createReasonConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateReasonConflict) ToJSONString() string {
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

func (o *CreateReasonConflict) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *CreateReasonConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateReasonInternalServerError creates a CreateReasonInternalServerError with default headers values
func NewCreateReasonInternalServerError() *CreateReasonInternalServerError {
	return &CreateReasonInternalServerError{}
}

/*CreateReasonInternalServerError handles this case with default header values.


 */
type CreateReasonInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *CreateReasonInternalServerError) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/reasons][%d] createReasonInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateReasonInternalServerError) ToJSONString() string {
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

func (o *CreateReasonInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *CreateReasonInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
