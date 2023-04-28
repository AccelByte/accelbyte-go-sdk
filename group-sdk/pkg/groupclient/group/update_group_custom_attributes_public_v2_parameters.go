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

// NewUpdateGroupCustomAttributesPublicV2Params creates a new UpdateGroupCustomAttributesPublicV2Params object
// with the default values initialized.
func NewUpdateGroupCustomAttributesPublicV2Params() *UpdateGroupCustomAttributesPublicV2Params {
	var ()
	return &UpdateGroupCustomAttributesPublicV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateGroupCustomAttributesPublicV2ParamsWithTimeout creates a new UpdateGroupCustomAttributesPublicV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateGroupCustomAttributesPublicV2ParamsWithTimeout(timeout time.Duration) *UpdateGroupCustomAttributesPublicV2Params {
	var ()
	return &UpdateGroupCustomAttributesPublicV2Params{

		timeout: timeout,
	}
}

// NewUpdateGroupCustomAttributesPublicV2ParamsWithContext creates a new UpdateGroupCustomAttributesPublicV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateGroupCustomAttributesPublicV2ParamsWithContext(ctx context.Context) *UpdateGroupCustomAttributesPublicV2Params {
	var ()
	return &UpdateGroupCustomAttributesPublicV2Params{

		Context: ctx,
	}
}

// NewUpdateGroupCustomAttributesPublicV2ParamsWithHTTPClient creates a new UpdateGroupCustomAttributesPublicV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateGroupCustomAttributesPublicV2ParamsWithHTTPClient(client *http.Client) *UpdateGroupCustomAttributesPublicV2Params {
	var ()
	return &UpdateGroupCustomAttributesPublicV2Params{
		HTTPClient: client,
	}
}

/*UpdateGroupCustomAttributesPublicV2Params contains all the parameters to send to the API endpoint
for the update group custom attributes public v2 operation typically these are written to a http.Request
*/
type UpdateGroupCustomAttributesPublicV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *groupclientmodels.ModelsUpdateGroupCustomAttributesRequestV1
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

// WithTimeout adds the timeout to the update group custom attributes public v2 params
func (o *UpdateGroupCustomAttributesPublicV2Params) WithTimeout(timeout time.Duration) *UpdateGroupCustomAttributesPublicV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update group custom attributes public v2 params
func (o *UpdateGroupCustomAttributesPublicV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update group custom attributes public v2 params
func (o *UpdateGroupCustomAttributesPublicV2Params) WithContext(ctx context.Context) *UpdateGroupCustomAttributesPublicV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update group custom attributes public v2 params
func (o *UpdateGroupCustomAttributesPublicV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update group custom attributes public v2 params
func (o *UpdateGroupCustomAttributesPublicV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update group custom attributes public v2 params
func (o *UpdateGroupCustomAttributesPublicV2Params) WithHTTPClient(client *http.Client) *UpdateGroupCustomAttributesPublicV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update group custom attributes public v2 params
func (o *UpdateGroupCustomAttributesPublicV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update group custom attributes public v2 params
func (o *UpdateGroupCustomAttributesPublicV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update group custom attributes public v2 params
func (o *UpdateGroupCustomAttributesPublicV2Params) WithBody(body *groupclientmodels.ModelsUpdateGroupCustomAttributesRequestV1) *UpdateGroupCustomAttributesPublicV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update group custom attributes public v2 params
func (o *UpdateGroupCustomAttributesPublicV2Params) SetBody(body *groupclientmodels.ModelsUpdateGroupCustomAttributesRequestV1) {
	o.Body = body
}

// WithGroupID adds the groupID to the update group custom attributes public v2 params
func (o *UpdateGroupCustomAttributesPublicV2Params) WithGroupID(groupID string) *UpdateGroupCustomAttributesPublicV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the update group custom attributes public v2 params
func (o *UpdateGroupCustomAttributesPublicV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the update group custom attributes public v2 params
func (o *UpdateGroupCustomAttributesPublicV2Params) WithNamespace(namespace string) *UpdateGroupCustomAttributesPublicV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update group custom attributes public v2 params
func (o *UpdateGroupCustomAttributesPublicV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateGroupCustomAttributesPublicV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
