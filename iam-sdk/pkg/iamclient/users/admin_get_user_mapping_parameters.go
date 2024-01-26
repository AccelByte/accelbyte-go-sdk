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

// NewAdminGetUserMappingParams creates a new AdminGetUserMappingParams object
// with the default values initialized.
func NewAdminGetUserMappingParams() *AdminGetUserMappingParams {
	var ()
	return &AdminGetUserMappingParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserMappingParamsWithTimeout creates a new AdminGetUserMappingParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserMappingParamsWithTimeout(timeout time.Duration) *AdminGetUserMappingParams {
	var ()
	return &AdminGetUserMappingParams{

		timeout: timeout,
	}
}

// NewAdminGetUserMappingParamsWithContext creates a new AdminGetUserMappingParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserMappingParamsWithContext(ctx context.Context) *AdminGetUserMappingParams {
	var ()
	return &AdminGetUserMappingParams{

		Context: ctx,
	}
}

// NewAdminGetUserMappingParamsWithHTTPClient creates a new AdminGetUserMappingParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserMappingParamsWithHTTPClient(client *http.Client) *AdminGetUserMappingParams {
	var ()
	return &AdminGetUserMappingParams{
		HTTPClient: client,
	}
}

/*AdminGetUserMappingParams contains all the parameters to send to the API endpoint
for the admin get user mapping operation typically these are written to a http.Request
*/
type AdminGetUserMappingParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*TargetNamespace
	  Target namespace

	*/
	TargetNamespace string
	/*UserID
	  User ID, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get user mapping params
func (o *AdminGetUserMappingParams) WithTimeout(timeout time.Duration) *AdminGetUserMappingParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user mapping params
func (o *AdminGetUserMappingParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user mapping params
func (o *AdminGetUserMappingParams) WithContext(ctx context.Context) *AdminGetUserMappingParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user mapping params
func (o *AdminGetUserMappingParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user mapping params
func (o *AdminGetUserMappingParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user mapping params
func (o *AdminGetUserMappingParams) WithHTTPClient(client *http.Client) *AdminGetUserMappingParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user mapping params
func (o *AdminGetUserMappingParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user mapping params
func (o *AdminGetUserMappingParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetUserMappingParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get user mapping params
func (o *AdminGetUserMappingParams) WithNamespace(namespace string) *AdminGetUserMappingParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user mapping params
func (o *AdminGetUserMappingParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTargetNamespace adds the targetNamespace to the admin get user mapping params
func (o *AdminGetUserMappingParams) WithTargetNamespace(targetNamespace string) *AdminGetUserMappingParams {
	o.SetTargetNamespace(targetNamespace)
	return o
}

// SetTargetNamespace adds the targetNamespace to the admin get user mapping params
func (o *AdminGetUserMappingParams) SetTargetNamespace(targetNamespace string) {
	o.TargetNamespace = targetNamespace
}

// WithUserID adds the userID to the admin get user mapping params
func (o *AdminGetUserMappingParams) WithUserID(userID string) *AdminGetUserMappingParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user mapping params
func (o *AdminGetUserMappingParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserMappingParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param targetNamespace
	if err := r.SetPathParam("targetNamespace", o.TargetNamespace); err != nil {
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
