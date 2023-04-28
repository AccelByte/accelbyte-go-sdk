// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
)

// NewUpdateGroupCustomRulePublicV1Params creates a new UpdateGroupCustomRulePublicV1Params object
// with the default values initialized.
func NewUpdateGroupCustomRulePublicV1Params() *UpdateGroupCustomRulePublicV1Params {
	var ()
	return &UpdateGroupCustomRulePublicV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateGroupCustomRulePublicV1ParamsWithTimeout creates a new UpdateGroupCustomRulePublicV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateGroupCustomRulePublicV1ParamsWithTimeout(timeout time.Duration) *UpdateGroupCustomRulePublicV1Params {
	var ()
	return &UpdateGroupCustomRulePublicV1Params{

		timeout: timeout,
	}
}

// NewUpdateGroupCustomRulePublicV1ParamsWithContext creates a new UpdateGroupCustomRulePublicV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateGroupCustomRulePublicV1ParamsWithContext(ctx context.Context) *UpdateGroupCustomRulePublicV1Params {
	var ()
	return &UpdateGroupCustomRulePublicV1Params{

		Context: ctx,
	}
}

// NewUpdateGroupCustomRulePublicV1ParamsWithHTTPClient creates a new UpdateGroupCustomRulePublicV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateGroupCustomRulePublicV1ParamsWithHTTPClient(client *http.Client) *UpdateGroupCustomRulePublicV1Params {
	var ()
	return &UpdateGroupCustomRulePublicV1Params{
		HTTPClient: client,
	}
}

/*UpdateGroupCustomRulePublicV1Params contains all the parameters to send to the API endpoint
for the update group custom rule public v1 operation typically these are written to a http.Request
*/
type UpdateGroupCustomRulePublicV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *groupclientmodels.ModelsUpdateGroupCustomRuleRequestV1
	/*GroupID
	  Group ID

	*/
	GroupID string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update group custom rule public v1 params
func (o *UpdateGroupCustomRulePublicV1Params) WithTimeout(timeout time.Duration) *UpdateGroupCustomRulePublicV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update group custom rule public v1 params
func (o *UpdateGroupCustomRulePublicV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update group custom rule public v1 params
func (o *UpdateGroupCustomRulePublicV1Params) WithContext(ctx context.Context) *UpdateGroupCustomRulePublicV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update group custom rule public v1 params
func (o *UpdateGroupCustomRulePublicV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update group custom rule public v1 params
func (o *UpdateGroupCustomRulePublicV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update group custom rule public v1 params
func (o *UpdateGroupCustomRulePublicV1Params) WithHTTPClient(client *http.Client) *UpdateGroupCustomRulePublicV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update group custom rule public v1 params
func (o *UpdateGroupCustomRulePublicV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update group custom rule public v1 params
func (o *UpdateGroupCustomRulePublicV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update group custom rule public v1 params
func (o *UpdateGroupCustomRulePublicV1Params) WithBody(body *groupclientmodels.ModelsUpdateGroupCustomRuleRequestV1) *UpdateGroupCustomRulePublicV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update group custom rule public v1 params
func (o *UpdateGroupCustomRulePublicV1Params) SetBody(body *groupclientmodels.ModelsUpdateGroupCustomRuleRequestV1) {
	o.Body = body
}

// WithGroupID adds the groupID to the update group custom rule public v1 params
func (o *UpdateGroupCustomRulePublicV1Params) WithGroupID(groupID string) *UpdateGroupCustomRulePublicV1Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the update group custom rule public v1 params
func (o *UpdateGroupCustomRulePublicV1Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the update group custom rule public v1 params
func (o *UpdateGroupCustomRulePublicV1Params) WithNamespace(namespace string) *UpdateGroupCustomRulePublicV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update group custom rule public v1 params
func (o *UpdateGroupCustomRulePublicV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateGroupCustomRulePublicV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
