// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval_s2_s

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

// S2SGetListFinishedPersonalDataRequestReader is a Reader for the S2SGetListFinishedPersonalDataRequest structure.
type S2SGetListFinishedPersonalDataRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *S2SGetListFinishedPersonalDataRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewS2SGetListFinishedPersonalDataRequestOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewS2SGetListFinishedPersonalDataRequestBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewS2SGetListFinishedPersonalDataRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewS2SGetListFinishedPersonalDataRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewS2SGetListFinishedPersonalDataRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/s2s/namespaces/{namespace}/requests/finished returns an error %d: %s", response.Code(), string(data))
	}
}

// NewS2SGetListFinishedPersonalDataRequestOK creates a S2SGetListFinishedPersonalDataRequestOK with default headers values
func NewS2SGetListFinishedPersonalDataRequestOK() *S2SGetListFinishedPersonalDataRequestOK {
	return &S2SGetListFinishedPersonalDataRequestOK{}
}

/*S2SGetListFinishedPersonalDataRequestOK handles this case with default header values.

  OK
*/
type S2SGetListFinishedPersonalDataRequestOK struct {
	Payload *gdprclientmodels.DTOListFinishedDataRequests
}

func (o *S2SGetListFinishedPersonalDataRequestOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/s2s/namespaces/{namespace}/requests/finished][%d] s2SGetListFinishedPersonalDataRequestOK  %+v", 200, o.ToJSONString())
}

func (o *S2SGetListFinishedPersonalDataRequestOK) ToJSONString() string {
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

func (o *S2SGetListFinishedPersonalDataRequestOK) GetPayload() *gdprclientmodels.DTOListFinishedDataRequests {
	return o.Payload
}

func (o *S2SGetListFinishedPersonalDataRequestOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.DTOListFinishedDataRequests)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewS2SGetListFinishedPersonalDataRequestBadRequest creates a S2SGetListFinishedPersonalDataRequestBadRequest with default headers values
func NewS2SGetListFinishedPersonalDataRequestBadRequest() *S2SGetListFinishedPersonalDataRequestBadRequest {
	return &S2SGetListFinishedPersonalDataRequestBadRequest{}
}

/*S2SGetListFinishedPersonalDataRequestBadRequest handles this case with default header values.

  Bad Request
*/
type S2SGetListFinishedPersonalDataRequestBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SGetListFinishedPersonalDataRequestBadRequest) Error() string {
	return fmt.Sprintf("[GET /gdpr/s2s/namespaces/{namespace}/requests/finished][%d] s2SGetListFinishedPersonalDataRequestBadRequest  %+v", 400, o.ToJSONString())
}

func (o *S2SGetListFinishedPersonalDataRequestBadRequest) ToJSONString() string {
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

func (o *S2SGetListFinishedPersonalDataRequestBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SGetListFinishedPersonalDataRequestBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewS2SGetListFinishedPersonalDataRequestUnauthorized creates a S2SGetListFinishedPersonalDataRequestUnauthorized with default headers values
func NewS2SGetListFinishedPersonalDataRequestUnauthorized() *S2SGetListFinishedPersonalDataRequestUnauthorized {
	return &S2SGetListFinishedPersonalDataRequestUnauthorized{}
}

/*S2SGetListFinishedPersonalDataRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type S2SGetListFinishedPersonalDataRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SGetListFinishedPersonalDataRequestUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/s2s/namespaces/{namespace}/requests/finished][%d] s2SGetListFinishedPersonalDataRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *S2SGetListFinishedPersonalDataRequestUnauthorized) ToJSONString() string {
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

func (o *S2SGetListFinishedPersonalDataRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SGetListFinishedPersonalDataRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewS2SGetListFinishedPersonalDataRequestForbidden creates a S2SGetListFinishedPersonalDataRequestForbidden with default headers values
func NewS2SGetListFinishedPersonalDataRequestForbidden() *S2SGetListFinishedPersonalDataRequestForbidden {
	return &S2SGetListFinishedPersonalDataRequestForbidden{}
}

/*S2SGetListFinishedPersonalDataRequestForbidden handles this case with default header values.

  Forbidden
*/
type S2SGetListFinishedPersonalDataRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SGetListFinishedPersonalDataRequestForbidden) Error() string {
	return fmt.Sprintf("[GET /gdpr/s2s/namespaces/{namespace}/requests/finished][%d] s2SGetListFinishedPersonalDataRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *S2SGetListFinishedPersonalDataRequestForbidden) ToJSONString() string {
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

func (o *S2SGetListFinishedPersonalDataRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SGetListFinishedPersonalDataRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewS2SGetListFinishedPersonalDataRequestInternalServerError creates a S2SGetListFinishedPersonalDataRequestInternalServerError with default headers values
func NewS2SGetListFinishedPersonalDataRequestInternalServerError() *S2SGetListFinishedPersonalDataRequestInternalServerError {
	return &S2SGetListFinishedPersonalDataRequestInternalServerError{}
}

/*S2SGetListFinishedPersonalDataRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type S2SGetListFinishedPersonalDataRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SGetListFinishedPersonalDataRequestInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/s2s/namespaces/{namespace}/requests/finished][%d] s2SGetListFinishedPersonalDataRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *S2SGetListFinishedPersonalDataRequestInternalServerError) ToJSONString() string {
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

func (o *S2SGetListFinishedPersonalDataRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SGetListFinishedPersonalDataRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
