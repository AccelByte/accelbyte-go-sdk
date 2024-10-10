// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_reports

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

// SubmitReportReader is a Reader for the SubmitReport structure.
type SubmitReportReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SubmitReportReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewSubmitReportCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSubmitReportBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewSubmitReportConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewSubmitReportTooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSubmitReportInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /reporting/v1/public/namespaces/{namespace}/reports returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSubmitReportCreated creates a SubmitReportCreated with default headers values
func NewSubmitReportCreated() *SubmitReportCreated {
	return &SubmitReportCreated{}
}

/*SubmitReportCreated handles this case with default header values.


 */
type SubmitReportCreated struct {
	Payload *reportingclientmodels.RestapiSubmitReportResponse
}

func (o *SubmitReportCreated) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/public/namespaces/{namespace}/reports][%d] submitReportCreated  %+v", 201, o.ToJSONString())
}

func (o *SubmitReportCreated) ToJSONString() string {
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

func (o *SubmitReportCreated) GetPayload() *reportingclientmodels.RestapiSubmitReportResponse {
	return o.Payload
}

func (o *SubmitReportCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiSubmitReportResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSubmitReportBadRequest creates a SubmitReportBadRequest with default headers values
func NewSubmitReportBadRequest() *SubmitReportBadRequest {
	return &SubmitReportBadRequest{}
}

/*SubmitReportBadRequest handles this case with default header values.


 */
type SubmitReportBadRequest struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *SubmitReportBadRequest) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/public/namespaces/{namespace}/reports][%d] submitReportBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SubmitReportBadRequest) ToJSONString() string {
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

func (o *SubmitReportBadRequest) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *SubmitReportBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSubmitReportConflict creates a SubmitReportConflict with default headers values
func NewSubmitReportConflict() *SubmitReportConflict {
	return &SubmitReportConflict{}
}

/*SubmitReportConflict handles this case with default header values.


 */
type SubmitReportConflict struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *SubmitReportConflict) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/public/namespaces/{namespace}/reports][%d] submitReportConflict  %+v", 409, o.ToJSONString())
}

func (o *SubmitReportConflict) ToJSONString() string {
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

func (o *SubmitReportConflict) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *SubmitReportConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSubmitReportTooManyRequests creates a SubmitReportTooManyRequests with default headers values
func NewSubmitReportTooManyRequests() *SubmitReportTooManyRequests {
	return &SubmitReportTooManyRequests{}
}

/*SubmitReportTooManyRequests handles this case with default header values.


 */
type SubmitReportTooManyRequests struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *SubmitReportTooManyRequests) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/public/namespaces/{namespace}/reports][%d] submitReportTooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *SubmitReportTooManyRequests) ToJSONString() string {
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

func (o *SubmitReportTooManyRequests) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *SubmitReportTooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSubmitReportInternalServerError creates a SubmitReportInternalServerError with default headers values
func NewSubmitReportInternalServerError() *SubmitReportInternalServerError {
	return &SubmitReportInternalServerError{}
}

/*SubmitReportInternalServerError handles this case with default header values.


 */
type SubmitReportInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *SubmitReportInternalServerError) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/public/namespaces/{namespace}/reports][%d] submitReportInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SubmitReportInternalServerError) ToJSONString() string {
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

func (o *SubmitReportInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *SubmitReportInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
