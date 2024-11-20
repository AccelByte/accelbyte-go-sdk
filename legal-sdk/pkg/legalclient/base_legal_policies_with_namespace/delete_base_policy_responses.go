// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies_with_namespace

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// DeleteBasePolicyReader is a Reader for the DeleteBasePolicy structure.
type DeleteBasePolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteBasePolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteBasePolicyNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteBasePolicyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteBasePolicyNoContent creates a DeleteBasePolicyNoContent with default headers values
func NewDeleteBasePolicyNoContent() *DeleteBasePolicyNoContent {
	return &DeleteBasePolicyNoContent{}
}

/*DeleteBasePolicyNoContent handles this case with default header values.

  Successful operation
*/
type DeleteBasePolicyNoContent struct {
}

func (o *DeleteBasePolicyNoContent) Error() string {
	return fmt.Sprintf("[DELETE /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}][%d] deleteBasePolicyNoContent ", 204)
}

func (o *DeleteBasePolicyNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteBasePolicyBadRequest creates a DeleteBasePolicyBadRequest with default headers values
func NewDeleteBasePolicyBadRequest() *DeleteBasePolicyBadRequest {
	return &DeleteBasePolicyBadRequest{}
}

/*DeleteBasePolicyBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40032</td><td>errors.net.accelbyte.platform.legal.invalid_base_policy</td></tr><tr><td>40068</td><td>errors.net.accelbyte.platform.legal.base_policy_have_published_policy_version_and_already_accepted_by_user</td></tr><tr><td>40069</td><td>errors.net.accelbyte.platform.legal.base_policy_already_have_published_policy_version</td></tr></table>
*/
type DeleteBasePolicyBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *DeleteBasePolicyBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}][%d] deleteBasePolicyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteBasePolicyBadRequest) ToJSONString() string {
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

func (o *DeleteBasePolicyBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteBasePolicyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
