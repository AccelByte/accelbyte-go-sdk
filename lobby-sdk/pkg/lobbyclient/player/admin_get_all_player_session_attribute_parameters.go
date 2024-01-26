// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package player

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

// NewAdminGetAllPlayerSessionAttributeParams creates a new AdminGetAllPlayerSessionAttributeParams object
// with the default values initialized.
func NewAdminGetAllPlayerSessionAttributeParams() *AdminGetAllPlayerSessionAttributeParams {
	var ()
	return &AdminGetAllPlayerSessionAttributeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetAllPlayerSessionAttributeParamsWithTimeout creates a new AdminGetAllPlayerSessionAttributeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetAllPlayerSessionAttributeParamsWithTimeout(timeout time.Duration) *AdminGetAllPlayerSessionAttributeParams {
	var ()
	return &AdminGetAllPlayerSessionAttributeParams{

		timeout: timeout,
	}
}

// NewAdminGetAllPlayerSessionAttributeParamsWithContext creates a new AdminGetAllPlayerSessionAttributeParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetAllPlayerSessionAttributeParamsWithContext(ctx context.Context) *AdminGetAllPlayerSessionAttributeParams {
	var ()
	return &AdminGetAllPlayerSessionAttributeParams{

		Context: ctx,
	}
}

// NewAdminGetAllPlayerSessionAttributeParamsWithHTTPClient creates a new AdminGetAllPlayerSessionAttributeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetAllPlayerSessionAttributeParamsWithHTTPClient(client *http.Client) *AdminGetAllPlayerSessionAttributeParams {
	var ()
	return &AdminGetAllPlayerSessionAttributeParams{
		HTTPClient: client,
	}
}

/*AdminGetAllPlayerSessionAttributeParams contains all the parameters to send to the API endpoint
for the admin get all player session attribute operation typically these are written to a http.Request
*/
type AdminGetAllPlayerSessionAttributeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get all player session attribute params
func (o *AdminGetAllPlayerSessionAttributeParams) WithTimeout(timeout time.Duration) *AdminGetAllPlayerSessionAttributeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get all player session attribute params
func (o *AdminGetAllPlayerSessionAttributeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get all player session attribute params
func (o *AdminGetAllPlayerSessionAttributeParams) WithContext(ctx context.Context) *AdminGetAllPlayerSessionAttributeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get all player session attribute params
func (o *AdminGetAllPlayerSessionAttributeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get all player session attribute params
func (o *AdminGetAllPlayerSessionAttributeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get all player session attribute params
func (o *AdminGetAllPlayerSessionAttributeParams) WithHTTPClient(client *http.Client) *AdminGetAllPlayerSessionAttributeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get all player session attribute params
func (o *AdminGetAllPlayerSessionAttributeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get all player session attribute params
func (o *AdminGetAllPlayerSessionAttributeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetAllPlayerSessionAttributeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get all player session attribute params
func (o *AdminGetAllPlayerSessionAttributeParams) WithNamespace(namespace string) *AdminGetAllPlayerSessionAttributeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get all player session attribute params
func (o *AdminGetAllPlayerSessionAttributeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get all player session attribute params
func (o *AdminGetAllPlayerSessionAttributeParams) WithUserID(userID string) *AdminGetAllPlayerSessionAttributeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get all player session attribute params
func (o *AdminGetAllPlayerSessionAttributeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetAllPlayerSessionAttributeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
