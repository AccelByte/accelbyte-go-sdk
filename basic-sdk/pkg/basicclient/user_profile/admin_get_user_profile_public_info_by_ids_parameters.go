// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package user_profile

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewAdminGetUserProfilePublicInfoByIdsParams creates a new AdminGetUserProfilePublicInfoByIdsParams object
// with the default values initialized.
func NewAdminGetUserProfilePublicInfoByIdsParams() *AdminGetUserProfilePublicInfoByIdsParams {
	var ()
	return &AdminGetUserProfilePublicInfoByIdsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserProfilePublicInfoByIdsParamsWithTimeout creates a new AdminGetUserProfilePublicInfoByIdsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserProfilePublicInfoByIdsParamsWithTimeout(timeout time.Duration) *AdminGetUserProfilePublicInfoByIdsParams {
	var ()
	return &AdminGetUserProfilePublicInfoByIdsParams{

		timeout: timeout,
	}
}

// NewAdminGetUserProfilePublicInfoByIdsParamsWithContext creates a new AdminGetUserProfilePublicInfoByIdsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserProfilePublicInfoByIdsParamsWithContext(ctx context.Context) *AdminGetUserProfilePublicInfoByIdsParams {
	var ()
	return &AdminGetUserProfilePublicInfoByIdsParams{

		Context: ctx,
	}
}

// NewAdminGetUserProfilePublicInfoByIdsParamsWithHTTPClient creates a new AdminGetUserProfilePublicInfoByIdsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserProfilePublicInfoByIdsParamsWithHTTPClient(client *http.Client) *AdminGetUserProfilePublicInfoByIdsParams {
	var ()
	return &AdminGetUserProfilePublicInfoByIdsParams{
		HTTPClient: client,
	}
}

/*AdminGetUserProfilePublicInfoByIdsParams contains all the parameters to send to the API endpoint
for the admin get user profile public info by ids operation typically these are written to a http.Request
*/
type AdminGetUserProfilePublicInfoByIdsParams struct {

	/*Body*/
	Body *basicclientmodels.UserProfileBulkRequest
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get user profile public info by ids params
func (o *AdminGetUserProfilePublicInfoByIdsParams) WithTimeout(timeout time.Duration) *AdminGetUserProfilePublicInfoByIdsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user profile public info by ids params
func (o *AdminGetUserProfilePublicInfoByIdsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user profile public info by ids params
func (o *AdminGetUserProfilePublicInfoByIdsParams) WithContext(ctx context.Context) *AdminGetUserProfilePublicInfoByIdsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user profile public info by ids params
func (o *AdminGetUserProfilePublicInfoByIdsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user profile public info by ids params
func (o *AdminGetUserProfilePublicInfoByIdsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user profile public info by ids params
func (o *AdminGetUserProfilePublicInfoByIdsParams) WithHTTPClient(client *http.Client) *AdminGetUserProfilePublicInfoByIdsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user profile public info by ids params
func (o *AdminGetUserProfilePublicInfoByIdsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithBody adds the body to the admin get user profile public info by ids params
func (o *AdminGetUserProfilePublicInfoByIdsParams) WithBody(body *basicclientmodels.UserProfileBulkRequest) *AdminGetUserProfilePublicInfoByIdsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin get user profile public info by ids params
func (o *AdminGetUserProfilePublicInfoByIdsParams) SetBody(body *basicclientmodels.UserProfileBulkRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin get user profile public info by ids params
func (o *AdminGetUserProfilePublicInfoByIdsParams) WithNamespace(namespace string) *AdminGetUserProfilePublicInfoByIdsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user profile public info by ids params
func (o *AdminGetUserProfilePublicInfoByIdsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserProfilePublicInfoByIdsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
