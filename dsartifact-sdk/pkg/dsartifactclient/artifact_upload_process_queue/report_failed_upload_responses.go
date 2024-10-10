// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package artifact_upload_process_queue

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclientmodels"
)

// ReportFailedUploadReader is a Reader for the ReportFailedUpload structure.
type ReportFailedUploadReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ReportFailedUploadReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewReportFailedUploadNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewReportFailedUploadBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewReportFailedUploadUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewReportFailedUploadInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /dsartifact/artifacts/queues/failed returns an error %d: %s", response.Code(), string(data))
	}
}

// NewReportFailedUploadNoContent creates a ReportFailedUploadNoContent with default headers values
func NewReportFailedUploadNoContent() *ReportFailedUploadNoContent {
	return &ReportFailedUploadNoContent{}
}

/*ReportFailedUploadNoContent handles this case with default header values.

  No Content
*/
type ReportFailedUploadNoContent struct {
}

func (o *ReportFailedUploadNoContent) Error() string {
	return fmt.Sprintf("[PUT /dsartifact/artifacts/queues/failed][%d] reportFailedUploadNoContent ", 204)
}

func (o *ReportFailedUploadNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewReportFailedUploadBadRequest creates a ReportFailedUploadBadRequest with default headers values
func NewReportFailedUploadBadRequest() *ReportFailedUploadBadRequest {
	return &ReportFailedUploadBadRequest{}
}

/*ReportFailedUploadBadRequest handles this case with default header values.

  Bad Request
*/
type ReportFailedUploadBadRequest struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ReportFailedUploadBadRequest) Error() string {
	return fmt.Sprintf("[PUT /dsartifact/artifacts/queues/failed][%d] reportFailedUploadBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ReportFailedUploadBadRequest) ToJSONString() string {
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

func (o *ReportFailedUploadBadRequest) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ReportFailedUploadBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewReportFailedUploadUnauthorized creates a ReportFailedUploadUnauthorized with default headers values
func NewReportFailedUploadUnauthorized() *ReportFailedUploadUnauthorized {
	return &ReportFailedUploadUnauthorized{}
}

/*ReportFailedUploadUnauthorized handles this case with default header values.

  Unauthorized
*/
type ReportFailedUploadUnauthorized struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ReportFailedUploadUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /dsartifact/artifacts/queues/failed][%d] reportFailedUploadUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ReportFailedUploadUnauthorized) ToJSONString() string {
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

func (o *ReportFailedUploadUnauthorized) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ReportFailedUploadUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewReportFailedUploadInternalServerError creates a ReportFailedUploadInternalServerError with default headers values
func NewReportFailedUploadInternalServerError() *ReportFailedUploadInternalServerError {
	return &ReportFailedUploadInternalServerError{}
}

/*ReportFailedUploadInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ReportFailedUploadInternalServerError struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ReportFailedUploadInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /dsartifact/artifacts/queues/failed][%d] reportFailedUploadInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ReportFailedUploadInternalServerError) ToJSONString() string {
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

func (o *ReportFailedUploadInternalServerError) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ReportFailedUploadInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
