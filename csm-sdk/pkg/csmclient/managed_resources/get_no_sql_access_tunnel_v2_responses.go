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

// GetNoSQLAccessTunnelV2Reader is a Reader for the GetNoSQLAccessTunnelV2 structure.
type GetNoSQLAccessTunnelV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetNoSQLAccessTunnelV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetNoSQLAccessTunnelV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetNoSQLAccessTunnelV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetNoSQLAccessTunnelV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetNoSQLAccessTunnelV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewGetNoSQLAccessTunnelV2ServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/nosql/tunnels returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetNoSQLAccessTunnelV2OK creates a GetNoSQLAccessTunnelV2OK with default headers values
func NewGetNoSQLAccessTunnelV2OK() *GetNoSQLAccessTunnelV2OK {
	return &GetNoSQLAccessTunnelV2OK{}
}

/*GetNoSQLAccessTunnelV2OK handles this case with default header values.

  OK
*/
type GetNoSQLAccessTunnelV2OK struct {
	Payload *csmclientmodels.ApimodelTunnelInfoResponse
}

func (o *GetNoSQLAccessTunnelV2OK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/nosql/tunnels][%d] getNoSqlAccessTunnelV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetNoSQLAccessTunnelV2OK) ToJSONString() string {
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

func (o *GetNoSQLAccessTunnelV2OK) GetPayload() *csmclientmodels.ApimodelTunnelInfoResponse {
	return o.Payload
}

func (o *GetNoSQLAccessTunnelV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelTunnelInfoResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetNoSQLAccessTunnelV2Unauthorized creates a GetNoSQLAccessTunnelV2Unauthorized with default headers values
func NewGetNoSQLAccessTunnelV2Unauthorized() *GetNoSQLAccessTunnelV2Unauthorized {
	return &GetNoSQLAccessTunnelV2Unauthorized{}
}

/*GetNoSQLAccessTunnelV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetNoSQLAccessTunnelV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLAccessTunnelV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/nosql/tunnels][%d] getNoSqlAccessTunnelV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetNoSQLAccessTunnelV2Unauthorized) ToJSONString() string {
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

func (o *GetNoSQLAccessTunnelV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLAccessTunnelV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNoSQLAccessTunnelV2NotFound creates a GetNoSQLAccessTunnelV2NotFound with default headers values
func NewGetNoSQLAccessTunnelV2NotFound() *GetNoSQLAccessTunnelV2NotFound {
	return &GetNoSQLAccessTunnelV2NotFound{}
}

/*GetNoSQLAccessTunnelV2NotFound handles this case with default header values.

  Not Found
*/
type GetNoSQLAccessTunnelV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLAccessTunnelV2NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/nosql/tunnels][%d] getNoSqlAccessTunnelV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetNoSQLAccessTunnelV2NotFound) ToJSONString() string {
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

func (o *GetNoSQLAccessTunnelV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLAccessTunnelV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNoSQLAccessTunnelV2InternalServerError creates a GetNoSQLAccessTunnelV2InternalServerError with default headers values
func NewGetNoSQLAccessTunnelV2InternalServerError() *GetNoSQLAccessTunnelV2InternalServerError {
	return &GetNoSQLAccessTunnelV2InternalServerError{}
}

/*GetNoSQLAccessTunnelV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetNoSQLAccessTunnelV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLAccessTunnelV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/nosql/tunnels][%d] getNoSqlAccessTunnelV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetNoSQLAccessTunnelV2InternalServerError) ToJSONString() string {
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

func (o *GetNoSQLAccessTunnelV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLAccessTunnelV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNoSQLAccessTunnelV2ServiceUnavailable creates a GetNoSQLAccessTunnelV2ServiceUnavailable with default headers values
func NewGetNoSQLAccessTunnelV2ServiceUnavailable() *GetNoSQLAccessTunnelV2ServiceUnavailable {
	return &GetNoSQLAccessTunnelV2ServiceUnavailable{}
}

/*GetNoSQLAccessTunnelV2ServiceUnavailable handles this case with default header values.

  Service Unavailable
*/
type GetNoSQLAccessTunnelV2ServiceUnavailable struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLAccessTunnelV2ServiceUnavailable) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/nosql/tunnels][%d] getNoSqlAccessTunnelV2ServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *GetNoSQLAccessTunnelV2ServiceUnavailable) ToJSONString() string {
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

func (o *GetNoSQLAccessTunnelV2ServiceUnavailable) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLAccessTunnelV2ServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
