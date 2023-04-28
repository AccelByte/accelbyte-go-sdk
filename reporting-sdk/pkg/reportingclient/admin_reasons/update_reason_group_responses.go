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

// UpdateReasonGroupReader is a Reader for the UpdateReasonGroup structure.
type UpdateReasonGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateReasonGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateReasonGroupOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateReasonGroupBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateReasonGroupConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateReasonGroupInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateReasonGroupOK creates a UpdateReasonGroupOK with default headers values
func NewUpdateReasonGroupOK() *UpdateReasonGroupOK {
	return &UpdateReasonGroupOK{}
}

/*UpdateReasonGroupOK handles this case with default header values.


 */
type UpdateReasonGroupOK struct {
	Payload *reportingclientmodels.RestapiReasonGroupResponse
}

func (o *UpdateReasonGroupOK) Error() string {
	return fmt.Sprintf("[PATCH /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}][%d] updateReasonGroupOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateReasonGroupOK) ToJSONString() string {
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

func (o *UpdateReasonGroupOK) GetPayload() *reportingclientmodels.RestapiReasonGroupResponse {
	return o.Payload
}

func (o *UpdateReasonGroupOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiReasonGroupResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateReasonGroupBadRequest creates a UpdateReasonGroupBadRequest with default headers values
func NewUpdateReasonGroupBadRequest() *UpdateReasonGroupBadRequest {
	return &UpdateReasonGroupBadRequest{}
}

/*UpdateReasonGroupBadRequest handles this case with default header values.


 */
type UpdateReasonGroupBadRequest struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpdateReasonGroupBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}][%d] updateReasonGroupBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateReasonGroupBadRequest) ToJSONString() string {
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

func (o *UpdateReasonGroupBadRequest) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpdateReasonGroupBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateReasonGroupConflict creates a UpdateReasonGroupConflict with default headers values
func NewUpdateReasonGroupConflict() *UpdateReasonGroupConflict {
	return &UpdateReasonGroupConflict{}
}

/*UpdateReasonGroupConflict handles this case with default header values.


 */
type UpdateReasonGroupConflict struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpdateReasonGroupConflict) Error() string {
	return fmt.Sprintf("[PATCH /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}][%d] updateReasonGroupConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateReasonGroupConflict) ToJSONString() string {
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

func (o *UpdateReasonGroupConflict) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpdateReasonGroupConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateReasonGroupInternalServerError creates a UpdateReasonGroupInternalServerError with default headers values
func NewUpdateReasonGroupInternalServerError() *UpdateReasonGroupInternalServerError {
	return &UpdateReasonGroupInternalServerError{}
}

/*UpdateReasonGroupInternalServerError handles this case with default header values.


 */
type UpdateReasonGroupInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpdateReasonGroupInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}][%d] updateReasonGroupInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateReasonGroupInternalServerError) ToJSONString() string {
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

func (o *UpdateReasonGroupInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpdateReasonGroupInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
