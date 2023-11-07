// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package a_m_s_qo_s

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// QoSRegionsUpdateReader is a Reader for the QoSRegionsUpdate structure.
type QoSRegionsUpdateReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QoSRegionsUpdateReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewQoSRegionsUpdateNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQoSRegionsUpdateBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQoSRegionsUpdateUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQoSRegionsUpdateForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQoSRegionsUpdateNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQoSRegionsUpdateInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /ams/v1/admin/namespaces/{namespace}/qos/{region} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQoSRegionsUpdateNoContent creates a QoSRegionsUpdateNoContent with default headers values
func NewQoSRegionsUpdateNoContent() *QoSRegionsUpdateNoContent {
	return &QoSRegionsUpdateNoContent{}
}

/*QoSRegionsUpdateNoContent handles this case with default header values.

  record updated
*/
type QoSRegionsUpdateNoContent struct {
}

func (o *QoSRegionsUpdateNoContent) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/qos/{region}][%d] qoSRegionsUpdateNoContent ", 204)
}

func (o *QoSRegionsUpdateNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewQoSRegionsUpdateBadRequest creates a QoSRegionsUpdateBadRequest with default headers values
func NewQoSRegionsUpdateBadRequest() *QoSRegionsUpdateBadRequest {
	return &QoSRegionsUpdateBadRequest{}
}

/*QoSRegionsUpdateBadRequest handles this case with default header values.

  malformed request
*/
type QoSRegionsUpdateBadRequest struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *QoSRegionsUpdateBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/qos/{region}][%d] qoSRegionsUpdateBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QoSRegionsUpdateBadRequest) ToJSONString() string {
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

func (o *QoSRegionsUpdateBadRequest) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *QoSRegionsUpdateBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQoSRegionsUpdateUnauthorized creates a QoSRegionsUpdateUnauthorized with default headers values
func NewQoSRegionsUpdateUnauthorized() *QoSRegionsUpdateUnauthorized {
	return &QoSRegionsUpdateUnauthorized{}
}

/*QoSRegionsUpdateUnauthorized handles this case with default header values.

  no authorization provided
*/
type QoSRegionsUpdateUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *QoSRegionsUpdateUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/qos/{region}][%d] qoSRegionsUpdateUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QoSRegionsUpdateUnauthorized) ToJSONString() string {
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

func (o *QoSRegionsUpdateUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *QoSRegionsUpdateUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQoSRegionsUpdateForbidden creates a QoSRegionsUpdateForbidden with default headers values
func NewQoSRegionsUpdateForbidden() *QoSRegionsUpdateForbidden {
	return &QoSRegionsUpdateForbidden{}
}

/*QoSRegionsUpdateForbidden handles this case with default header values.

  insufficient permissions
*/
type QoSRegionsUpdateForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *QoSRegionsUpdateForbidden) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/qos/{region}][%d] qoSRegionsUpdateForbidden  %+v", 403, o.ToJSONString())
}

func (o *QoSRegionsUpdateForbidden) ToJSONString() string {
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

func (o *QoSRegionsUpdateForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *QoSRegionsUpdateForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQoSRegionsUpdateNotFound creates a QoSRegionsUpdateNotFound with default headers values
func NewQoSRegionsUpdateNotFound() *QoSRegionsUpdateNotFound {
	return &QoSRegionsUpdateNotFound{}
}

/*QoSRegionsUpdateNotFound handles this case with default header values.

  regionial QoS record not found
*/
type QoSRegionsUpdateNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *QoSRegionsUpdateNotFound) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/qos/{region}][%d] qoSRegionsUpdateNotFound  %+v", 404, o.ToJSONString())
}

func (o *QoSRegionsUpdateNotFound) ToJSONString() string {
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

func (o *QoSRegionsUpdateNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *QoSRegionsUpdateNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQoSRegionsUpdateInternalServerError creates a QoSRegionsUpdateInternalServerError with default headers values
func NewQoSRegionsUpdateInternalServerError() *QoSRegionsUpdateInternalServerError {
	return &QoSRegionsUpdateInternalServerError{}
}

/*QoSRegionsUpdateInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QoSRegionsUpdateInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *QoSRegionsUpdateInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/qos/{region}][%d] qoSRegionsUpdateInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QoSRegionsUpdateInternalServerError) ToJSONString() string {
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

func (o *QoSRegionsUpdateInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *QoSRegionsUpdateInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
