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
)

// NewGetSingleMemberRoleAdminV1Params creates a new GetSingleMemberRoleAdminV1Params object
// with the default values initialized.
func NewGetSingleMemberRoleAdminV1Params() *GetSingleMemberRoleAdminV1Params {
	var ()
	return &GetSingleMemberRoleAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetSingleMemberRoleAdminV1ParamsWithTimeout creates a new GetSingleMemberRoleAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetSingleMemberRoleAdminV1ParamsWithTimeout(timeout time.Duration) *GetSingleMemberRoleAdminV1Params {
	var ()
	return &GetSingleMemberRoleAdminV1Params{

		timeout: timeout,
	}
}

// NewGetSingleMemberRoleAdminV1ParamsWithContext creates a new GetSingleMemberRoleAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetSingleMemberRoleAdminV1ParamsWithContext(ctx context.Context) *GetSingleMemberRoleAdminV1Params {
	var ()
	return &GetSingleMemberRoleAdminV1Params{

		Context: ctx,
	}
}

// NewGetSingleMemberRoleAdminV1ParamsWithHTTPClient creates a new GetSingleMemberRoleAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetSingleMemberRoleAdminV1ParamsWithHTTPClient(client *http.Client) *GetSingleMemberRoleAdminV1Params {
	var ()
	return &GetSingleMemberRoleAdminV1Params{
		HTTPClient: client,
	}
}

/*GetSingleMemberRoleAdminV1Params contains all the parameters to send to the API endpoint
for the get single member role admin v1 operation typically these are written to a http.Request
*/
type GetSingleMemberRoleAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the get single member role admin v1 params
func (o *GetSingleMemberRoleAdminV1Params) WithTimeout(timeout time.Duration) *GetSingleMemberRoleAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get single member role admin v1 params
func (o *GetSingleMemberRoleAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get single member role admin v1 params
func (o *GetSingleMemberRoleAdminV1Params) WithContext(ctx context.Context) *GetSingleMemberRoleAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get single member role admin v1 params
func (o *GetSingleMemberRoleAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get single member role admin v1 params
func (o *GetSingleMemberRoleAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get single member role admin v1 params
func (o *GetSingleMemberRoleAdminV1Params) WithHTTPClient(client *http.Client) *GetSingleMemberRoleAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get single member role admin v1 params
func (o *GetSingleMemberRoleAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get single member role admin v1 params
func (o *GetSingleMemberRoleAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithMemberRoleID adds the memberRoleID to the get single member role admin v1 params
func (o *GetSingleMemberRoleAdminV1Params) WithMemberRoleID(memberRoleID string) *GetSingleMemberRoleAdminV1Params {
	o.SetMemberRoleID(memberRoleID)
	return o
}

// SetMemberRoleID adds the memberRoleId to the get single member role admin v1 params
func (o *GetSingleMemberRoleAdminV1Params) SetMemberRoleID(memberRoleID string) {
	o.MemberRoleID = memberRoleID
}

// WithNamespace adds the namespace to the get single member role admin v1 params
func (o *GetSingleMemberRoleAdminV1Params) WithNamespace(namespace string) *GetSingleMemberRoleAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get single member role admin v1 params
func (o *GetSingleMemberRoleAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetSingleMemberRoleAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
