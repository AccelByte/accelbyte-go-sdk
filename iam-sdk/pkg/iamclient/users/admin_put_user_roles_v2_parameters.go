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

// NewAdminPutUserRolesV2Params creates a new AdminPutUserRolesV2Params object
// with the default values initialized.
func NewAdminPutUserRolesV2Params() *AdminPutUserRolesV2Params {
	var ()
	return &AdminPutUserRolesV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPutUserRolesV2ParamsWithTimeout creates a new AdminPutUserRolesV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPutUserRolesV2ParamsWithTimeout(timeout time.Duration) *AdminPutUserRolesV2Params {
	var ()
	return &AdminPutUserRolesV2Params{

		timeout: timeout,
	}
}

// NewAdminPutUserRolesV2ParamsWithContext creates a new AdminPutUserRolesV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPutUserRolesV2ParamsWithContext(ctx context.Context) *AdminPutUserRolesV2Params {
	var ()
	return &AdminPutUserRolesV2Params{

		Context: ctx,
	}
}

// NewAdminPutUserRolesV2ParamsWithHTTPClient creates a new AdminPutUserRolesV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPutUserRolesV2ParamsWithHTTPClient(client *http.Client) *AdminPutUserRolesV2Params {
	var ()
	return &AdminPutUserRolesV2Params{
		HTTPClient: client,
	}
}

/*AdminPutUserRolesV2Params contains all the parameters to send to the API endpoint
for the admin put user roles v2 operation typically these are written to a http.Request
*/
type AdminPutUserRolesV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  User id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin put user roles v2 params
func (o *AdminPutUserRolesV2Params) WithTimeout(timeout time.Duration) *AdminPutUserRolesV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin put user roles v2 params
func (o *AdminPutUserRolesV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin put user roles v2 params
func (o *AdminPutUserRolesV2Params) WithContext(ctx context.Context) *AdminPutUserRolesV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin put user roles v2 params
func (o *AdminPutUserRolesV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin put user roles v2 params
func (o *AdminPutUserRolesV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin put user roles v2 params
func (o *AdminPutUserRolesV2Params) WithHTTPClient(client *http.Client) *AdminPutUserRolesV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin put user roles v2 params
func (o *AdminPutUserRolesV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin put user roles v2 params
func (o *AdminPutUserRolesV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminPutUserRolesV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin put user roles v2 params
func (o *AdminPutUserRolesV2Params) WithBody(body []string) *AdminPutUserRolesV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin put user roles v2 params
func (o *AdminPutUserRolesV2Params) SetBody(body []string) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin put user roles v2 params
func (o *AdminPutUserRolesV2Params) WithNamespace(namespace string) *AdminPutUserRolesV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin put user roles v2 params
func (o *AdminPutUserRolesV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin put user roles v2 params
func (o *AdminPutUserRolesV2Params) WithUserID(userID string) *AdminPutUserRolesV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin put user roles v2 params
func (o *AdminPutUserRolesV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPutUserRolesV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
