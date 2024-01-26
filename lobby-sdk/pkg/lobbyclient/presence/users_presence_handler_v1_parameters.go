// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package presence

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewUsersPresenceHandlerV1Params creates a new UsersPresenceHandlerV1Params object
// with the default values initialized.
func NewUsersPresenceHandlerV1Params() *UsersPresenceHandlerV1Params {
	var ()
	return &UsersPresenceHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUsersPresenceHandlerV1ParamsWithTimeout creates a new UsersPresenceHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUsersPresenceHandlerV1ParamsWithTimeout(timeout time.Duration) *UsersPresenceHandlerV1Params {
	var ()
	return &UsersPresenceHandlerV1Params{

		timeout: timeout,
	}
}

// NewUsersPresenceHandlerV1ParamsWithContext creates a new UsersPresenceHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewUsersPresenceHandlerV1ParamsWithContext(ctx context.Context) *UsersPresenceHandlerV1Params {
	var ()
	return &UsersPresenceHandlerV1Params{

		Context: ctx,
	}
}

// NewUsersPresenceHandlerV1ParamsWithHTTPClient creates a new UsersPresenceHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUsersPresenceHandlerV1ParamsWithHTTPClient(client *http.Client) *UsersPresenceHandlerV1Params {
	var ()
	return &UsersPresenceHandlerV1Params{
		HTTPClient: client,
	}
}

/*UsersPresenceHandlerV1Params contains all the parameters to send to the API endpoint
for the users presence handler v1 operation typically these are written to a http.Request
*/
type UsersPresenceHandlerV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*CountOnly
	  return only number of players for each availability status

	*/
	CountOnly *bool
	/*UserIds
	  Comma separated value of userIds

	*/
	UserIds string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the users presence handler v1 params
func (o *UsersPresenceHandlerV1Params) WithTimeout(timeout time.Duration) *UsersPresenceHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the users presence handler v1 params
func (o *UsersPresenceHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the users presence handler v1 params
func (o *UsersPresenceHandlerV1Params) WithContext(ctx context.Context) *UsersPresenceHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the users presence handler v1 params
func (o *UsersPresenceHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the users presence handler v1 params
func (o *UsersPresenceHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the users presence handler v1 params
func (o *UsersPresenceHandlerV1Params) WithHTTPClient(client *http.Client) *UsersPresenceHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the users presence handler v1 params
func (o *UsersPresenceHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the users presence handler v1 params
func (o *UsersPresenceHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UsersPresenceHandlerV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the users presence handler v1 params
func (o *UsersPresenceHandlerV1Params) WithNamespace(namespace string) *UsersPresenceHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the users presence handler v1 params
func (o *UsersPresenceHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCountOnly adds the countOnly to the users presence handler v1 params
func (o *UsersPresenceHandlerV1Params) WithCountOnly(countOnly *bool) *UsersPresenceHandlerV1Params {
	o.SetCountOnly(countOnly)
	return o
}

// SetCountOnly adds the countOnly to the users presence handler v1 params
func (o *UsersPresenceHandlerV1Params) SetCountOnly(countOnly *bool) {
	o.CountOnly = countOnly
}

// WithUserIds adds the userIds to the users presence handler v1 params
func (o *UsersPresenceHandlerV1Params) WithUserIds(userIds string) *UsersPresenceHandlerV1Params {
	o.SetUserIds(userIds)
	return o
}

// SetUserIds adds the userIds to the users presence handler v1 params
func (o *UsersPresenceHandlerV1Params) SetUserIds(userIds string) {
	o.UserIds = userIds
}

// WriteToRequest writes these params to a swagger request
func (o *UsersPresenceHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.CountOnly != nil {

		// query param countOnly
		var qrCountOnly bool
		if o.CountOnly != nil {
			qrCountOnly = *o.CountOnly
		}
		qCountOnly := swag.FormatBool(qrCountOnly)
		if qCountOnly != "" {
			if err := r.SetQueryParam("countOnly", qCountOnly); err != nil {
				return err
			}
		}

	}

	// query param userIds
	qrUserIds := o.UserIds
	qUserIds := qrUserIds
	if qUserIds != "" {
		if err := r.SetQueryParam("userIds", qUserIds); err != nil {
			return err
		}
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
