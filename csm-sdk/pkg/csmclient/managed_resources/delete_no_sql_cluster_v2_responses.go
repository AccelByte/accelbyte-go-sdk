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

// DeleteNoSQLClusterV2Reader is a Reader for the DeleteNoSQLClusterV2 structure.
type DeleteNoSQLClusterV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteNoSQLClusterV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteNoSQLClusterV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteNoSQLClusterV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteNoSQLClusterV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteNoSQLClusterV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDeleteNoSQLClusterV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteNoSQLClusterV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v2/admin/namespaces/{namespace}/nosql/clusters returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteNoSQLClusterV2OK creates a DeleteNoSQLClusterV2OK with default headers values
func NewDeleteNoSQLClusterV2OK() *DeleteNoSQLClusterV2OK {
	return &DeleteNoSQLClusterV2OK{}
}

/*DeleteNoSQLClusterV2OK handles this case with default header values.

  OK
*/
type DeleteNoSQLClusterV2OK struct {
	Payload *csmclientmodels.ApimodelDeleteNoSQLResourceResponse
}

func (o *DeleteNoSQLClusterV2OK) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] deleteNoSqlClusterV2OK  %+v", 200, o.ToJSONString())
}

func (o *DeleteNoSQLClusterV2OK) ToJSONString() string {
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

func (o *DeleteNoSQLClusterV2OK) GetPayload() *csmclientmodels.ApimodelDeleteNoSQLResourceResponse {
	return o.Payload
}

func (o *DeleteNoSQLClusterV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelDeleteNoSQLResourceResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteNoSQLClusterV2Unauthorized creates a DeleteNoSQLClusterV2Unauthorized with default headers values
func NewDeleteNoSQLClusterV2Unauthorized() *DeleteNoSQLClusterV2Unauthorized {
	return &DeleteNoSQLClusterV2Unauthorized{}
}

/*DeleteNoSQLClusterV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteNoSQLClusterV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteNoSQLClusterV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] deleteNoSqlClusterV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteNoSQLClusterV2Unauthorized) ToJSONString() string {
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

func (o *DeleteNoSQLClusterV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteNoSQLClusterV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteNoSQLClusterV2Forbidden creates a DeleteNoSQLClusterV2Forbidden with default headers values
func NewDeleteNoSQLClusterV2Forbidden() *DeleteNoSQLClusterV2Forbidden {
	return &DeleteNoSQLClusterV2Forbidden{}
}

/*DeleteNoSQLClusterV2Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteNoSQLClusterV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteNoSQLClusterV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] deleteNoSqlClusterV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteNoSQLClusterV2Forbidden) ToJSONString() string {
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

func (o *DeleteNoSQLClusterV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteNoSQLClusterV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteNoSQLClusterV2NotFound creates a DeleteNoSQLClusterV2NotFound with default headers values
func NewDeleteNoSQLClusterV2NotFound() *DeleteNoSQLClusterV2NotFound {
	return &DeleteNoSQLClusterV2NotFound{}
}

/*DeleteNoSQLClusterV2NotFound handles this case with default header values.

  Not Found
*/
type DeleteNoSQLClusterV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteNoSQLClusterV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] deleteNoSqlClusterV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteNoSQLClusterV2NotFound) ToJSONString() string {
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

func (o *DeleteNoSQLClusterV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteNoSQLClusterV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteNoSQLClusterV2Conflict creates a DeleteNoSQLClusterV2Conflict with default headers values
func NewDeleteNoSQLClusterV2Conflict() *DeleteNoSQLClusterV2Conflict {
	return &DeleteNoSQLClusterV2Conflict{}
}

/*DeleteNoSQLClusterV2Conflict handles this case with default header values.

  Conflict
*/
type DeleteNoSQLClusterV2Conflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteNoSQLClusterV2Conflict) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] deleteNoSqlClusterV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *DeleteNoSQLClusterV2Conflict) ToJSONString() string {
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

func (o *DeleteNoSQLClusterV2Conflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteNoSQLClusterV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteNoSQLClusterV2InternalServerError creates a DeleteNoSQLClusterV2InternalServerError with default headers values
func NewDeleteNoSQLClusterV2InternalServerError() *DeleteNoSQLClusterV2InternalServerError {
	return &DeleteNoSQLClusterV2InternalServerError{}
}

/*DeleteNoSQLClusterV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteNoSQLClusterV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteNoSQLClusterV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] deleteNoSqlClusterV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteNoSQLClusterV2InternalServerError) ToJSONString() string {
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

func (o *DeleteNoSQLClusterV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteNoSQLClusterV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
