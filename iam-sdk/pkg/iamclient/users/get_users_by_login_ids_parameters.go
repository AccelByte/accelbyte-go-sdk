// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewGetUsersByLoginIdsParams creates a new GetUsersByLoginIdsParams object
// with the default values initialized.
func NewGetUsersByLoginIdsParams() *GetUsersByLoginIdsParams {
	var ()
	return &GetUsersByLoginIdsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUsersByLoginIdsParamsWithTimeout creates a new GetUsersByLoginIdsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUsersByLoginIdsParamsWithTimeout(timeout time.Duration) *GetUsersByLoginIdsParams {
	var ()
	return &GetUsersByLoginIdsParams{

		timeout: timeout,
	}
}

// NewGetUsersByLoginIdsParamsWithContext creates a new GetUsersByLoginIdsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUsersByLoginIdsParamsWithContext(ctx context.Context) *GetUsersByLoginIdsParams {
	var ()
	return &GetUsersByLoginIdsParams{

		Context: ctx,
	}
}

// NewGetUsersByLoginIdsParamsWithHTTPClient creates a new GetUsersByLoginIdsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUsersByLoginIdsParamsWithHTTPClient(client *http.Client) *GetUsersByLoginIdsParams {
	var ()
	return &GetUsersByLoginIdsParams{
		HTTPClient: client,
	}
}

/*GetUsersByLoginIdsParams contains all the parameters to send to the API endpoint
for the get users by login ids operation typically these are written to a http.Request
*/
type GetUsersByLoginIdsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*LoginIds
	  List of LoginIDs. Separated by comma.

	*/
	LoginIds *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get users by login ids params
func (o *GetUsersByLoginIdsParams) WithTimeout(timeout time.Duration) *GetUsersByLoginIdsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get users by login ids params
func (o *GetUsersByLoginIdsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get users by login ids params
func (o *GetUsersByLoginIdsParams) WithContext(ctx context.Context) *GetUsersByLoginIdsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get users by login ids params
func (o *GetUsersByLoginIdsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get users by login ids params
func (o *GetUsersByLoginIdsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get users by login ids params
func (o *GetUsersByLoginIdsParams) WithHTTPClient(client *http.Client) *GetUsersByLoginIdsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get users by login ids params
func (o *GetUsersByLoginIdsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get users by login ids params
func (o *GetUsersByLoginIdsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get users by login ids params
func (o *GetUsersByLoginIdsParams) WithNamespace(namespace string) *GetUsersByLoginIdsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get users by login ids params
func (o *GetUsersByLoginIdsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLoginIds adds the loginIds to the get users by login ids params
func (o *GetUsersByLoginIdsParams) WithLoginIds(loginIds *string) *GetUsersByLoginIdsParams {
	o.SetLoginIds(loginIds)
	return o
}

// SetLoginIds adds the loginIds to the get users by login ids params
func (o *GetUsersByLoginIdsParams) SetLoginIds(loginIds *string) {
	o.LoginIds = loginIds
}

// WriteToRequest writes these params to a swagger request
func (o *GetUsersByLoginIdsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.LoginIds != nil {

		// query param loginIds
		var qrLoginIds string
		if o.LoginIds != nil {
			qrLoginIds = *o.LoginIds
		}
		qLoginIds := qrLoginIds
		if qLoginIds != "" {
			if err := r.SetQueryParam("loginIds", qLoginIds); err != nil {
				return err
			}
		}

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
