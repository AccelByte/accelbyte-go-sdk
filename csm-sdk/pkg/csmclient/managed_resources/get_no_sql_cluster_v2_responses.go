// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package managed_resources

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// GetNoSQLClusterV2Reader is a Reader for the GetNoSQLClusterV2 structure.
type GetNoSQLClusterV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetNoSQLClusterV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetNoSQLClusterV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetNoSQLClusterV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetNoSQLClusterV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetNoSQLClusterV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetNoSQLClusterV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetNoSQLClusterV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/nosql/clusters returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetNoSQLClusterV2OK creates a GetNoSQLClusterV2OK with default headers values
func NewGetNoSQLClusterV2OK() *GetNoSQLClusterV2OK {
	return &GetNoSQLClusterV2OK{}
}

/*GetNoSQLClusterV2OK handles this case with default header values.

  OK
*/
type GetNoSQLClusterV2OK struct {
	Payload *csmclientmodels.ApimodelNoSQLResourceResponse
}

func (o *GetNoSQLClusterV2OK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] getNoSqlClusterV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetNoSQLClusterV2OK) ToJSONString() string {
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

func (o *GetNoSQLClusterV2OK) GetPayload() *csmclientmodels.ApimodelNoSQLResourceResponse {
	return o.Payload
}

func (o *GetNoSQLClusterV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelNoSQLResourceResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetNoSQLClusterV2BadRequest creates a GetNoSQLClusterV2BadRequest with default headers values
func NewGetNoSQLClusterV2BadRequest() *GetNoSQLClusterV2BadRequest {
	return &GetNoSQLClusterV2BadRequest{}
}

/*GetNoSQLClusterV2BadRequest handles this case with default header values.

  Bad Request
*/
type GetNoSQLClusterV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLClusterV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] getNoSqlClusterV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetNoSQLClusterV2BadRequest) ToJSONString() string {
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

func (o *GetNoSQLClusterV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLClusterV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetNoSQLClusterV2Unauthorized creates a GetNoSQLClusterV2Unauthorized with default headers values
func NewGetNoSQLClusterV2Unauthorized() *GetNoSQLClusterV2Unauthorized {
	return &GetNoSQLClusterV2Unauthorized{}
}

/*GetNoSQLClusterV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetNoSQLClusterV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLClusterV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] getNoSqlClusterV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetNoSQLClusterV2Unauthorized) ToJSONString() string {
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

func (o *GetNoSQLClusterV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLClusterV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetNoSQLClusterV2Forbidden creates a GetNoSQLClusterV2Forbidden with default headers values
func NewGetNoSQLClusterV2Forbidden() *GetNoSQLClusterV2Forbidden {
	return &GetNoSQLClusterV2Forbidden{}
}

/*GetNoSQLClusterV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetNoSQLClusterV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLClusterV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] getNoSqlClusterV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetNoSQLClusterV2Forbidden) ToJSONString() string {
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

func (o *GetNoSQLClusterV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLClusterV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetNoSQLClusterV2NotFound creates a GetNoSQLClusterV2NotFound with default headers values
func NewGetNoSQLClusterV2NotFound() *GetNoSQLClusterV2NotFound {
	return &GetNoSQLClusterV2NotFound{}
}

/*GetNoSQLClusterV2NotFound handles this case with default header values.

  Not Found
*/
type GetNoSQLClusterV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLClusterV2NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] getNoSqlClusterV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetNoSQLClusterV2NotFound) ToJSONString() string {
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

func (o *GetNoSQLClusterV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLClusterV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetNoSQLClusterV2InternalServerError creates a GetNoSQLClusterV2InternalServerError with default headers values
func NewGetNoSQLClusterV2InternalServerError() *GetNoSQLClusterV2InternalServerError {
	return &GetNoSQLClusterV2InternalServerError{}
}

/*GetNoSQLClusterV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetNoSQLClusterV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLClusterV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] getNoSqlClusterV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetNoSQLClusterV2InternalServerError) ToJSONString() string {
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

func (o *GetNoSQLClusterV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLClusterV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
