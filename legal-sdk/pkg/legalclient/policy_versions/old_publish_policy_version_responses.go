// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policy_versions

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

// OldPublishPolicyVersionReader is a Reader for the OldPublishPolicyVersion structure.
type OldPublishPolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldPublishPolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewOldPublishPolicyVersionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewOldPublishPolicyVersionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewOldPublishPolicyVersionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/admin/policies/versions/{policyVersionId}/latest returns an error %d: %s", response.Code(), string(data))
	}
}

// NewOldPublishPolicyVersionOK creates a OldPublishPolicyVersionOK with default headers values
func NewOldPublishPolicyVersionOK() *OldPublishPolicyVersionOK {
	return &OldPublishPolicyVersionOK{}
}

/*OldPublishPolicyVersionOK handles this case with default header values.

  operation successful
*/
type OldPublishPolicyVersionOK struct {
}

func (o *OldPublishPolicyVersionOK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/policies/versions/{policyVersionId}/latest][%d] oldPublishPolicyVersionOK ", 200)
}

func (o *OldPublishPolicyVersionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewOldPublishPolicyVersionBadRequest creates a OldPublishPolicyVersionBadRequest with default headers values
func NewOldPublishPolicyVersionBadRequest() *OldPublishPolicyVersionBadRequest {
	return &OldPublishPolicyVersionBadRequest{}
}

/*OldPublishPolicyVersionBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.invalid_policy_version</td></tr><tr><td>40046</td><td>errors.net.accelbyte.platform.legal.default_selection_not_provided</td></tr><tr><td>40030</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_not_provided</td></tr></table>
*/
type OldPublishPolicyVersionBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldPublishPolicyVersionBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/policies/versions/{policyVersionId}/latest][%d] oldPublishPolicyVersionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *OldPublishPolicyVersionBadRequest) ToJSONString() string {
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

func (o *OldPublishPolicyVersionBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldPublishPolicyVersionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewOldPublishPolicyVersionConflict creates a OldPublishPolicyVersionConflict with default headers values
func NewOldPublishPolicyVersionConflict() *OldPublishPolicyVersionConflict {
	return &OldPublishPolicyVersionConflict{}
}

/*OldPublishPolicyVersionConflict handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40039</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_already_latest</td></tr><tr><td>40043</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_already_publish</td></tr></table>
*/
type OldPublishPolicyVersionConflict struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldPublishPolicyVersionConflict) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/policies/versions/{policyVersionId}/latest][%d] oldPublishPolicyVersionConflict  %+v", 409, o.ToJSONString())
}

func (o *OldPublishPolicyVersionConflict) ToJSONString() string {
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

func (o *OldPublishPolicyVersionConflict) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldPublishPolicyVersionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
