// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policies

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

// OldSetDefaultPolicyReader is a Reader for the OldSetDefaultPolicy structure.
type OldSetDefaultPolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldSetDefaultPolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewOldSetDefaultPolicyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewOldSetDefaultPolicyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/admin/policies/{policyId}/default returns an error %d: %s", response.Code(), string(data))
	}
}

// NewOldSetDefaultPolicyOK creates a OldSetDefaultPolicyOK with default headers values
func NewOldSetDefaultPolicyOK() *OldSetDefaultPolicyOK {
	return &OldSetDefaultPolicyOK{}
}

/*OldSetDefaultPolicyOK handles this case with default header values.

  operation successful
*/
type OldSetDefaultPolicyOK struct {
}

func (o *OldSetDefaultPolicyOK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/policies/{policyId}/default][%d] oldSetDefaultPolicyOK ", 200)
}

func (o *OldSetDefaultPolicyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewOldSetDefaultPolicyBadRequest creates a OldSetDefaultPolicyBadRequest with default headers values
func NewOldSetDefaultPolicyBadRequest() *OldSetDefaultPolicyBadRequest {
	return &OldSetDefaultPolicyBadRequest{}
}

/*OldSetDefaultPolicyBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40033</td><td>errors.net.accelbyte.platform.legal.invalid_policy_id</td></tr></table>
*/
type OldSetDefaultPolicyBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldSetDefaultPolicyBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/policies/{policyId}/default][%d] oldSetDefaultPolicyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *OldSetDefaultPolicyBadRequest) ToJSONString() string {
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

func (o *OldSetDefaultPolicyBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldSetDefaultPolicyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
