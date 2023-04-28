// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group_roles

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

// NewUpdateMemberRoleAdminV1Params creates a new UpdateMemberRoleAdminV1Params object
// with the default values initialized.
func NewUpdateMemberRoleAdminV1Params() *UpdateMemberRoleAdminV1Params {
	var ()
	return &UpdateMemberRoleAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateMemberRoleAdminV1ParamsWithTimeout creates a new UpdateMemberRoleAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateMemberRoleAdminV1ParamsWithTimeout(timeout time.Duration) *UpdateMemberRoleAdminV1Params {
	var ()
	return &UpdateMemberRoleAdminV1Params{

		timeout: timeout,
	}
}

// NewUpdateMemberRoleAdminV1ParamsWithContext creates a new UpdateMemberRoleAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateMemberRoleAdminV1ParamsWithContext(ctx context.Context) *UpdateMemberRoleAdminV1Params {
	var ()
	return &UpdateMemberRoleAdminV1Params{

		Context: ctx,
	}
}

// NewUpdateMemberRoleAdminV1ParamsWithHTTPClient creates a new UpdateMemberRoleAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateMemberRoleAdminV1ParamsWithHTTPClient(client *http.Client) *UpdateMemberRoleAdminV1Params {
	var ()
	return &UpdateMemberRoleAdminV1Params{
		HTTPClient: client,
	}
}

/*UpdateMemberRoleAdminV1Params contains all the parameters to send to the API endpoint
for the update member role admin v1 operation typically these are written to a http.Request
*/
type UpdateMemberRoleAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *groupclientmodels.ModelsUpdateMemberRoleRequestV1
	/*MemberRoleID
	  member Role ID

	*/
	MemberRoleID string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update member role admin v1 params
func (o *UpdateMemberRoleAdminV1Params) WithTimeout(timeout time.Duration) *UpdateMemberRoleAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update member role admin v1 params
func (o *UpdateMemberRoleAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update member role admin v1 params
func (o *UpdateMemberRoleAdminV1Params) WithContext(ctx context.Context) *UpdateMemberRoleAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update member role admin v1 params
func (o *UpdateMemberRoleAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update member role admin v1 params
func (o *UpdateMemberRoleAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update member role admin v1 params
func (o *UpdateMemberRoleAdminV1Params) WithHTTPClient(client *http.Client) *UpdateMemberRoleAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update member role admin v1 params
func (o *UpdateMemberRoleAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update member role admin v1 params
func (o *UpdateMemberRoleAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update member role admin v1 params
func (o *UpdateMemberRoleAdminV1Params) WithBody(body *groupclientmodels.ModelsUpdateMemberRoleRequestV1) *UpdateMemberRoleAdminV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update member role admin v1 params
func (o *UpdateMemberRoleAdminV1Params) SetBody(body *groupclientmodels.ModelsUpdateMemberRoleRequestV1) {
	o.Body = body
}

// WithMemberRoleID adds the memberRoleID to the update member role admin v1 params
func (o *UpdateMemberRoleAdminV1Params) WithMemberRoleID(memberRoleID string) *UpdateMemberRoleAdminV1Params {
	o.SetMemberRoleID(memberRoleID)
	return o
}

// SetMemberRoleID adds the memberRoleId to the update member role admin v1 params
func (o *UpdateMemberRoleAdminV1Params) SetMemberRoleID(memberRoleID string) {
	o.MemberRoleID = memberRoleID
}

// WithNamespace adds the namespace to the update member role admin v1 params
func (o *UpdateMemberRoleAdminV1Params) WithNamespace(namespace string) *UpdateMemberRoleAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update member role admin v1 params
func (o *UpdateMemberRoleAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateMemberRoleAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param memberRoleId
	if err := r.SetPathParam("memberRoleId", o.MemberRoleID); err != nil {
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
