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

// QoSRegionsGetReader is a Reader for the QoSRegionsGet structure.
type QoSRegionsGetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QoSRegionsGetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQoSRegionsGetOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQoSRegionsGetBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQoSRegionsGetUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQoSRegionsGetForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQoSRegionsGetInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/v1/admin/namespaces/{namespace}/qos returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQoSRegionsGetOK creates a QoSRegionsGetOK with default headers values
func NewQoSRegionsGetOK() *QoSRegionsGetOK {
	return &QoSRegionsGetOK{}
}

/*QoSRegionsGetOK handles this case with default header values.

  success
*/
type QoSRegionsGetOK struct {
	Payload *amsclientmodels.APIQoSEndpointResponse
}

func (o *QoSRegionsGetOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/qos][%d] qoSRegionsGetOK  %+v", 200, o.ToJSONString())
}

func (o *QoSRegionsGetOK) ToJSONString() string {
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

func (o *QoSRegionsGetOK) GetPayload() *amsclientmodels.APIQoSEndpointResponse {
	return o.Payload
}

func (o *QoSRegionsGetOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIQoSEndpointResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQoSRegionsGetBadRequest creates a QoSRegionsGetBadRequest with default headers values
func NewQoSRegionsGetBadRequest() *QoSRegionsGetBadRequest {
	return &QoSRegionsGetBadRequest{}
}

/*QoSRegionsGetBadRequest handles this case with default header values.

  bad request
*/
type QoSRegionsGetBadRequest struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *QoSRegionsGetBadRequest) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/qos][%d] qoSRegionsGetBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QoSRegionsGetBadRequest) ToJSONString() string {
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

func (o *QoSRegionsGetBadRequest) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *QoSRegionsGetBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQoSRegionsGetUnauthorized creates a QoSRegionsGetUnauthorized with default headers values
func NewQoSRegionsGetUnauthorized() *QoSRegionsGetUnauthorized {
	return &QoSRegionsGetUnauthorized{}
}

/*QoSRegionsGetUnauthorized handles this case with default header values.

  no authorization provided
*/
type QoSRegionsGetUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *QoSRegionsGetUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/qos][%d] qoSRegionsGetUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QoSRegionsGetUnauthorized) ToJSONString() string {
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

func (o *QoSRegionsGetUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *QoSRegionsGetUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQoSRegionsGetForbidden creates a QoSRegionsGetForbidden with default headers values
func NewQoSRegionsGetForbidden() *QoSRegionsGetForbidden {
	return &QoSRegionsGetForbidden{}
}

/*QoSRegionsGetForbidden handles this case with default header values.

  insufficient permissions
*/
type QoSRegionsGetForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *QoSRegionsGetForbidden) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/qos][%d] qoSRegionsGetForbidden  %+v", 403, o.ToJSONString())
}

func (o *QoSRegionsGetForbidden) ToJSONString() string {
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

func (o *QoSRegionsGetForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *QoSRegionsGetForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQoSRegionsGetInternalServerError creates a QoSRegionsGetInternalServerError with default headers values
func NewQoSRegionsGetInternalServerError() *QoSRegionsGetInternalServerError {
	return &QoSRegionsGetInternalServerError{}
}

/*QoSRegionsGetInternalServerError handles this case with default header values.

  internal server error
*/
type QoSRegionsGetInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *QoSRegionsGetInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/qos][%d] qoSRegionsGetInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QoSRegionsGetInternalServerError) ToJSONString() string {
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

func (o *QoSRegionsGetInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *QoSRegionsGetInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
